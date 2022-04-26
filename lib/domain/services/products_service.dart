import 'package:state_management/domain/entities/product.dart';

abstract class ProductsService {
  Future<List<Product>> getProducts();
}
