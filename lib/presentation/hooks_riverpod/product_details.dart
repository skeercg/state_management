import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/presentation/hooks_riverpod/providers.dart';

class ProductDetails extends HookConsumerWidget {
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(shopNotifierProvider);

    return Scaffold(
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
                onPressed: !(data.isInCart[product.id] ?? false)
                    ? () => ref
                        .read(shopNotifierProvider.notifier)
                        .addToCart(product)
                    : () => ref
                        .read(shopNotifierProvider.notifier)
                        .removeFromCart(product),
                icon: Icon(
                  Icons.shopping_cart,
                  color: (data.isInCart[product.id] ?? false)
                      ? Colors.red
                      : Colors.blue,
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
    );
  }
}
