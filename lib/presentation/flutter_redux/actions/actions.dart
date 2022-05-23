import 'package:state_management/domain/entities/product.dart';

class AddToCartAction {
  AddToCartAction({required this.product});

  Product product;
}

class RemoveFromCartAction {
  RemoveFromCartAction({required this.product});

  Product product;
}

class GetProductsAction {}

class ProductsLoadedAction {
  ProductsLoadedAction({required this.products});

  final List<Product> products;
}
