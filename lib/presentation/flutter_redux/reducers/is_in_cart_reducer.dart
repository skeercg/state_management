import 'package:redux/redux.dart';
import 'package:state_management/presentation/flutter_redux/actions/actions.dart';

final Reducer<Map<String, bool>> isInCartReducer = combineReducers([
  TypedReducer<Map<String, bool>, AddToCartAction>(_addToCartReducer),
  TypedReducer<Map<String, bool>, RemoveFromCartAction>(_removeFromCartReducer),
]);

Map<String, bool> _addToCartReducer(
  Map<String, bool> isInCart,
  AddToCartAction action,
) {
  final newMap = Map.of(isInCart);
  newMap.putIfAbsent(action.product.id, () => true);
  newMap[action.product.id] = true;
  return newMap;
}

Map<String, bool> _removeFromCartReducer(
  Map<String, bool> isInCart,
  RemoveFromCartAction action,
) {
  final newMap = Map.of(isInCart);
  newMap.putIfAbsent(action.product.id, () => false);
  newMap[action.product.id] = false;
  return newMap;
}
