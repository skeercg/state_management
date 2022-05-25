// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShopState on _ShopState, Store {
  late final _$cartAtom = Atom(name: '_ShopState.cart', context: context);

  @override
  List<Product> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(List<Product> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  late final _$productsAtom =
      Atom(name: '_ShopState.products', context: context);

  @override
  List<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$fetchAllProductsAsyncAction =
      AsyncAction('_ShopState.fetchAllProducts', context: context);

  @override
  Future<void> fetchAllProducts() {
    return _$fetchAllProductsAsyncAction.run(() => super.fetchAllProducts());
  }

  late final _$_ShopStateActionController =
      ActionController(name: '_ShopState', context: context);

  @override
  void addToCart(Product product) {
    final _$actionInfo =
        _$_ShopStateActionController.startAction(name: '_ShopState.addToCart');
    try {
      return super.addToCart(product);
    } finally {
      _$_ShopStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFromCart(Product product) {
    final _$actionInfo = _$_ShopStateActionController.startAction(
        name: '_ShopState.removeFromCart');
    try {
      return super.removeFromCart(product);
    } finally {
      _$_ShopStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart: ${cart},
products: ${products}
    ''';
  }
}
