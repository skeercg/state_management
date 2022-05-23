import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/product.dart';

@immutable
class ShopState {
  const ShopState({
    this.products = const [],
    this.inCartCount = 0,
    this.isInCart = const {},
  });

  final List<Product> products;
  final Map<String, bool> isInCart;
  final int inCartCount;

  factory ShopState.initial() => const ShopState();

  ShopState copyWith({
    List<Product>? products,
    Map<String, bool>? isInCart,
    int? inCartCount,
  }) =>
      ShopState(
        products: products ?? this.products,
        inCartCount: inCartCount ?? this.inCartCount,
        isInCart: isInCart ?? this.isInCart,
      );
}
