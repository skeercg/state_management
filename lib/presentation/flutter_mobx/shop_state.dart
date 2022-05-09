import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';

part 'shop_state.g.dart';

@injectable
class ShopState = _ShopState with _$ShopState;

abstract class _ShopState with Store {
  _ShopState({required this.service}) {
    fetchAllProducts();
  }

  final ProductsService service;

  @observable
  List<Product> cart = [];

  @observable
  List<Product> products = [];

  @action
  void addToCart(Product product) {
    cart.add(product);
    cart = List.of(cart);
  }

  @action
  void removeFromCart(Product product) {
    cart.remove(product);
    cart = List.of(cart);
  }

  @action
  Future<void> fetchAllProducts() async {
    products = await service.getProducts();
  }
}
