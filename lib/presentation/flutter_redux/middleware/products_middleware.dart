import 'package:redux/redux.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';
import 'package:state_management/main.dart';
import 'package:state_management/presentation/flutter_redux/actions/actions.dart';
import 'package:state_management/presentation/flutter_redux/shop_state.dart';

void productsMiddleware(
  Store<ShopState> store,
  action,
  NextDispatcher nextDispatcher,
) {
  if (action is GetProductsAction) {
    _getProducts().then(
      (products) => store.dispatch(
        ProductsLoadedAction(products: products),
      ),
    );
  }
  nextDispatcher(action);
}

Future<List<Product>> _getProducts() {
  return getIt<ProductsService>().getProducts();
}
