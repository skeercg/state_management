import 'package:flutter/material.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/main.dart';
import 'package:state_management/presentation/custom_bloc/product_details.dart';
import 'package:state_management/presentation/custom_bloc/shop_bloc.dart';
import 'package:state_management/presentation/custom_bloc/shop_state.dart';

class CustomBloc extends StatefulWidget {
  const CustomBloc({Key? key}) : super(key: key);

  @override
  State<CustomBloc> createState() => _CustomBlocState();
}

class _CustomBlocState extends State<CustomBloc> {
  late final ShopBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = getIt<ShopBloc>();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ShopState>(
      stream: bloc.state,
      builder: (context, snapshot) {
        if (snapshot.data is ShopStateLoading) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Custom Bloc'),
              actions: const [
                CartBadge(count: 0),
              ],
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (snapshot.data is ShopStateLoaded) {
          final data = snapshot.data as ShopStateLoaded;
          return Scaffold(
            appBar: AppBar(
              title: Text('Custom Bloc'),
              actions: [
                CartBadge(count: data.inCartCount),
              ],
            ),
            body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: data.products.length,
              itemBuilder: (context, index) => ProductCard(
                onCardTapped: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetails(
                        product: data.products[index],
                        bloc: bloc,
                      ),
                    ),
                  );
                },
                addToCart: (product) =>
                    bloc.event.add(AddToCart(product: product)),
                removeFromCart: (product) =>
                    bloc.event.add(RemoveFromCart(product: product)),
                inCart: data.isInCart[data.products[index].id]!,
                product: data.products[index],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
