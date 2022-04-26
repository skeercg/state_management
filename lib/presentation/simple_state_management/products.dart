import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/domain/services/products_service.dart';

@injectable
class Products with ChangeNotifier {
  Products({required this.service}) {
    getProducts();
  }

  final ProductsService service;

  List<Product> products = [];

  Future<void> getProducts() async {
    products = await service.getProducts();

    notifyListeners();
  }
}
