import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/presentation/flutter_mobx/shop_state.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final state = context.read<ShopState>();
    return Observer(
      builder: (context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
                IconButton(
                  onPressed: !state.cart.contains(product)
                      ? () => state.addToCart(product)
                      : () => state.removeFromCart(product),
                  icon: Icon(
                    Icons.shopping_cart,
                    color:
                        state.cart.contains(product) ? Colors.red : Colors.blue,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
            Text(
              '${product.price.toString()}\$',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(height: 7),
            Text(
              product.description,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
