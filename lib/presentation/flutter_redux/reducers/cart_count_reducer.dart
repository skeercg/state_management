import 'package:redux/redux.dart';
import 'package:state_management/presentation/flutter_redux/actions/actions.dart';

final Reducer<int> cartCountReducer = combineReducers([
  TypedReducer<int, AddToCartAction>(_addToCartReducer),
  TypedReducer<int, RemoveFromCartAction>(_removeFromCartReducer),
]);

int _addToCartReducer(int inCartCount, AddToCartAction action) {
  return inCartCount + 1;
}

int _removeFromCartReducer(int inCartCount, RemoveFromCartAction action) {
  return inCartCount - 1;
}
