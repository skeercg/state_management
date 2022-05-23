import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/flutter_redux/actions/actions.dart';
import 'package:state_management/presentation/flutter_redux/product_details.dart';
import 'package:state_management/presentation/flutter_redux/shop_state.dart';

class FlutterRedux extends StatelessWidget {
  const FlutterRedux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<ShopState> store = StoreProvider.of<ShopState>(context);
    store.dispatch(GetProductsAction());
    return StoreConnector<ShopState, ShopState>(
      converter: (store) => store.state,
      builder: (context, vm) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Redux'),
          actions: [
            CartBadge(count: vm.inCartCount),
          ],
        ),
        body: vm.products.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: vm.products.length,
                itemBuilder: (context, index) => ProductCard(
                  product: vm.products[index],
                  onCardTapped: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductDetails(
                              product: vm.products[index],
                            )));
                  },
                  removeFromCart: (product) =>
                      store.dispatch(RemoveFromCartAction(product: product)),
                  addToCart: (product) =>
                      store.dispatch(AddToCartAction(product: product)),
                  inCart: vm.isInCart[vm.products[index].id] ?? false,
                ),
              ),
      ),
    );
  }
}
