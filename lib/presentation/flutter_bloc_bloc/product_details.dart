import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_bloc.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_state.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(builder: (context, state) {
      if (state is! ShopStateLoaded) return Container();
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
                  onPressed: !state.isInCart[product.id]!
                      ? () => context
                          .read<ShopBloc>()
                          .add(AddToCart(product: product))
                      : () => context
                          .read<ShopBloc>()
                          .add(RemoveFromCart(product: product)),
                  icon: Icon(
                    Icons.shopping_cart,
                    color:
                        state.isInCart[product.id]! ? Colors.red : Colors.blue,
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
    });
  }
}
