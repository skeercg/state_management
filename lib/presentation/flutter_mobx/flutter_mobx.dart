import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/flutter_mobx/product_details.dart';
import 'package:state_management/presentation/flutter_mobx/shop_state.dart';

class FlutterMobX extends StatelessWidget {
  const FlutterMobX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.read<ShopState>();
    return Observer(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bloc: Cubit'),
          actions: [
            CartBadge(count: context.watch<ShopState>().cart.length),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: state.products.length,
          itemBuilder: (context, index) => ProductCard(
            product: state.products[index],
            inCart: state.cart.contains(state.products[index]),
            addToCart: state.addToCart,
            removeFromCart: state.removeFromCart,
            onCardTapped: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  product: state.products[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
