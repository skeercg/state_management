import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@Freezed()
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String imageUrl,
    required String description,
    required double price,
  }) = _Product;
}
