import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.inCart,
    required this.addToCart,
    required this.removeFromCart,
  }) : super(key: key);

  final Product product;
  final bool inCart;
  final Function(Product) addToCart;
  final Function(Product) removeFromCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 5,
            left: 10,
            child: Text(
              product.name,
              style: TextStyle(
                fontSize: 17.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1.5
                  ..color = Colors.blue,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            child: Text(
              '${product.price.toString()}\$',
              style: TextStyle(
                fontSize: 17.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1.5
                  ..color = Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            right: 3,
            child: IconButton(
              onPressed: !inCart
                  ? () => addToCart(product)
                  : () => removeFromCart(product),
              icon: Icon(
                Icons.shopping_cart,
                color: inCart ? Colors.red : Colors.blue,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
