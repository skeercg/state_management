import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/simple_state_management/cart.dart';
import 'package:state_management/presentation/simple_state_management/product_details.dart';
import 'package:state_management/presentation/simple_state_management/products.dart';

class SimpleStateManagement extends StatelessWidget {
  const SimpleStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final products = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple State Management'),
        actions: [
          CartBadge(count: cart.productCount),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.products.length,
        itemBuilder: (ctx, index) => ProductCard(
          onCardTapped: () => Navigator.of(ctx).push(
            MaterialPageRoute(
              builder: (_) => ProductDetails(
                product: products.products[index],
              ),
            ),
          ),
          addToCart: cart.addToCart,
          removeFromCart: cart.removeFromCart,
          inCart: cart.inCart(products.products[index]),
          product: products.products[index],
        ),
      ),
    );
  }
}
