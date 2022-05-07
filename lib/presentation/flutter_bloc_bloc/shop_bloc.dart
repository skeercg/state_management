import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_state.dart';

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

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({required this.service}) : super(const ShopStateLoading()) {
    on<GetProducts>(_mapGetProductsEventToState);
    on<AddToCart>(_mapAddToCartEventToState);
    on<RemoveFromCart>(_mapRemoveFromCartEventToState);
  }

  final ProductsService service;
  late final List<Product> _products;
  final Map<String, bool> _isInCart = {};
  int _inCartCount = 0;

  void _mapGetProductsEventToState(
    ShopEvent event,
    Emitter<ShopState> emit,
  ) async {
    emit(ShopStateLoading());
    _products = await service.getProducts();
    for (var product in _products) {
      _isInCart.putIfAbsent(
        product.id,
        () => false,
      );
    }
    emit(ShopStateLoaded(
        products: _products, isInCart: _isInCart, inCartCount: _inCartCount));
  }

  void _mapAddToCartEventToState(
    ShopEvent event,
    Emitter<ShopState> emit,
  ) {
    if (event is! AddToCart) return;
    emit(ShopStateLoading());
    _isInCart[event.product.id] = true;
    _inCartCount++;
    emit(ShopStateLoaded(
        products: _products, isInCart: _isInCart, inCartCount: _inCartCount));
  }

  void _mapRemoveFromCartEventToState(
    ShopEvent event,
    Emitter<ShopState> emit,
  ) {
    if (event is! RemoveFromCart) return;
    emit(ShopStateLoading());
    _isInCart[event.product.id] = false;
    _inCartCount--;
    emit(ShopStateLoaded(
        products: _products, isInCart: _isInCart, inCartCount: _inCartCount));
  }
}
