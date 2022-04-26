import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';

@injectable
class Cart with ChangeNotifier {
  List<Product> cart = [];

  void addToCart(Product product) {
    cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    cart.remove(product);
    notifyListeners();
  }

  bool inCart(Product product) {
    return cart.contains(product);
  }

  int get productCount {
    return cart.length;
  }
}
