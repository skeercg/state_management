import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/hooks_riverpod/product_details.dart';
import 'package:state_management/presentation/hooks_riverpod/providers.dart';

class HooksRiverpod extends HookConsumerWidget {
  const HooksRiverpod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(shopNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Hooks Riverpod'),
        actions: [
          CartBadge(count: data.inCartCount),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: data.products.length,
        itemBuilder: (context, index) => ProductCard(
          product: data.products[index],
          inCart: data.isInCart[data.products[index].id] ?? false,
          addToCart: ref.read(shopNotifierProvider.notifier).addToCart,
          removeFromCart:
              ref.read(shopNotifierProvider.notifier).removeFromCart,
          onCardTapped: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  ProductDetails(product: data.products[index]),
            ));
          },
        ),
      ),
    );
  }
}
