import 'package:injectable/injectable.dart';
import 'package:state_management/data/repositories/products_repository.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';

@Singleton(as: ProductsService)
class ProductsServiceImpl implements ProductsService {
  ProductsServiceImpl(this.repository);

  final ProductsRepository repository;

  @override
  Future<List<Product>> getProducts() async {
    final result = await repository.getProducts();

    return result;
  }
}
