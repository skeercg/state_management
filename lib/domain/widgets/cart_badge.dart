import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Icon(
              Icons.shopping_cart,
              color: Colors.red,
              size: 40,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              constraints: BoxConstraints(
                minHeight: 15,
                minWidth: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Text(
                count.toString(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
