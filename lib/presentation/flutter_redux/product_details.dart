import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_management/domain/entities/product.dart';
import 'package:state_management/presentation/flutter_redux/shop_state.dart';

import 'actions/actions.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Store<ShopState> store = StoreProvider.of<ShopState>(context);

    return StoreConnector<ShopState, ShopState>(
        converter: (store) => store.state,
        builder: (context, vm) => Scaffold(
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
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 30),
                      ),
                      IconButton(
                        onPressed: !(vm.isInCart[product.id] ?? false)
                            ? () => store
                                .dispatch(AddToCartAction(product: product))
                            : () => store.dispatch(
                                RemoveFromCartAction(product: product)),
                        icon: Icon(
                          Icons.shopping_cart,
                          color: (vm.isInCart[product.id] ?? false)
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
            ));
  }
}
