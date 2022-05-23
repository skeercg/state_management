import 'package:redux/redux.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/presentation/flutter_redux/actions/actions.dart';

final Reducer<List<Product>> productsReducer = combineReducers([
  TypedReducer<List<Product>, GetProductsAction>(_getProductsReducer),
  TypedReducer<List<Product>, ProductsLoadedAction>(_productsLoadedReducer),
]);

List<Product> _getProductsReducer(
  List<Product> products,
  GetProductsAction action,
) {
  return [];
}

List<Product> _productsLoadedReducer(
  List<Product> products,
  ProductsLoadedAction action,
) {
  return action.products;
}
