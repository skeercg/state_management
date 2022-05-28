import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';
import 'package:state_management/main.dart';
import 'package:state_management/presentation/hooks_riverpod/shop_state.dart';

final shopNotifierProvider =
    StateNotifierProvider<ShopNotifier, ShopState>((ref) => ShopNotifier());

class ShopNotifier extends StateNotifier<ShopState> {
  ShopNotifier() : super(ShopState()) {
    getAllProducts();
  }

  Future<void> getAllProducts() async {
    final result = await getIt<ProductsService>().getProducts();
    state = state.copyWith(products: List.of(result));
  }

  void addToCart(Product product) {
    final newMap = Map.of(state.isInCart);
    newMap.putIfAbsent(product.id, () => true);
    newMap[product.id] = true;
    state = state.copyWith(
      inCartCount: state.inCartCount + 1,
      isInCart: newMap,
    );
  }

  void removeFromCart(Product product) {
    final newMap = Map.of(state.isInCart);
    newMap.putIfAbsent(product.id, () => false);
    newMap[product.id] = false;
    state = state.copyWith(
      inCartCount: state.inCartCount - 1,
      isInCart: newMap,
    );
  }
}
