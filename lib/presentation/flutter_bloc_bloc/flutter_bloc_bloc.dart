import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/product_details.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_bloc.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_state.dart';

class FlutterBlocBloc extends StatelessWidget {
  const FlutterBlocBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(builder: (context, state) {
      if (state is ShopStateLoading) {
        context.read<ShopBloc>().add(GetProducts());
      }
      return state.map(
        loading: (_) => Scaffold(
          appBar: AppBar(
            title: Text('Flutter Bloc: Bloc'),
            actions: const [
              CartBadge(count: 0),
            ],
          ),
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        loaded: (loaded) => Scaffold(
          appBar: AppBar(
            title: Text('Flutter Bloc: Bloc'),
            actions: [
              CartBadge(count: loaded.inCartCount),
            ],
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: loaded.products.length,
            itemBuilder: (context, index) => ProductCard(
              onCardTapped: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    product: loaded.products[index],
                  ),
                ),
              ),
              addToCart: (product) =>
                  context.read<ShopBloc>().add(AddToCart(product: product)),
              removeFromCart: (product) => context
                  .read<ShopBloc>()
                  .add(RemoveFromCart(product: product)),
              inCart: loaded.isInCart[loaded.products[index].id]!,
              product: loaded.products[index],
            ),
          ),
        ),
      );
    });
  }
}
