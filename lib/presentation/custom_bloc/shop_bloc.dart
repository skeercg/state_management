import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';
import 'package:state_management/presentation/custom_bloc/shop_state.dart';

abstract class ShopEvent {}

class GetProducts extends ShopEvent {}

class AddToCart extends ShopEvent {
  AddToCart({required this.product});

  Product product;
}

class RemoveFromCart extends ShopEvent {
  RemoveFromCart({required this.product});

  Product product;
}

class OpenProductDetails extends ShopEvent {}

@injectable
class ShopBloc {
  ShopBloc({required this.service}) {
    _eventsController.stream.listen(_handleEvent);
    _eventsController.add(GetProducts());
  }

  final ProductsService service;

  final _stateController = StreamController<ShopState>.broadcast();
  final _eventsController = StreamController<ShopEvent>.broadcast();

  Stream<ShopState> get state => _stateController.stream;
  Sink<ShopEvent> get event => _eventsController.sink;

  late final List<Product> _products;
  final Map<String, bool> _isInCart = {};
  int _inCartCount = 0;

  void dispose() {
    _stateController.close();
    _eventsController.close();
  }

  void _handleEvent(ShopEvent event) async {
    if (event is AddToCart) {
      _stateController.add(ShopStateLoading());
      _isInCart[event.product.id] = true;
      _inCartCount++;
      _stateController.add(ShopStateLoaded(
        products: _products,
        isInCart: _isInCart,
        inCartCount: _inCartCount,
      ));
    }

    if (event is RemoveFromCart) {
      _stateController.add(ShopStateLoading());
      _isInCart[event.product.id] = false;
      _inCartCount--;
      _stateController.add(ShopStateLoaded(
        products: _products,
        isInCart: _isInCart,
        inCartCount: _inCartCount,
      ));
    }

    if (event is GetProducts) {
      _stateController.add(ShopStateLoading());
      _products = await service.getProducts();
      for (var product in _products) {
        _isInCart[product.id] = false;
      }
      _stateController.add(ShopStateLoaded(
        products: _products,
        isInCart: _isInCart,
        inCartCount: _inCartCount,
      ));
    }

    if (event is OpenProductDetails) {
      _stateController.add(ShopStateLoaded(
        products: _products,
        isInCart: _isInCart,
        inCartCount: _inCartCount,
      ));
    }
  }
}
