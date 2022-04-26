import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/domain/entities/product.dart';

part 'shop_state.freezed.dart';

@Freezed()
class ShopState with _$ShopState {
  const factory ShopState.loading() = ShopStateLoading;

  const factory ShopState.loaded({
    required List<Product> products,
  }) = ShopStateLoaded;
}
