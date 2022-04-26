import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';
import 'package:state_management/presentation/flutter_bloc_cubit/shop_state.dart';

@injectable
class ShopCubit extends Cubit<ShopState> {
  ShopCubit({required this.service}) : super(ShopStateLoading()) {
    getAllProducts();
  }

  final ProductsService service;
  late final List<Product> _products;
  final List<Product> _cart = [];

  Future<void> getAllProducts() async {
    emit(ShopStateLoading());
    _products = await service.getProducts();
    emit(ShopStateLoaded(products: _products));
  }

  bool inCart(Product product) {
    return _cart.contains(product);
  }

  void addToCart(Product product) {
    _cart.add(product);
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
  }

  int cartCount() {
    return _cart.length;
  }
}
