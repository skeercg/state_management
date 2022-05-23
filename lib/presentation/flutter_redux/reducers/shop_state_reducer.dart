import 'package:state_management/presentation/flutter_redux/reducers/cart_count_reducer.dart';
import 'package:state_management/presentation/flutter_redux/reducers/is_in_cart_reducer.dart';
import 'package:state_management/presentation/flutter_redux/reducers/products_reducer.dart';
import 'package:state_management/presentation/flutter_redux/shop_state.dart';

ShopState shopStateReducer(ShopState state, action) {
  return state.copyWith(
    products: productsReducer(state.products, action),
    isInCart: isInCartReducer(state.isInCart, action),
    inCartCount: cartCountReducer(state.inCartCount, action),
  );
}
