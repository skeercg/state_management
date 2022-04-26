import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/widgets/cart_badge.dart';
import 'package:state_management/domain/widgets/product_card.dart';
import 'package:state_management/presentation/flutter_bloc_cubit/shop_cubit.dart';
import 'package:state_management/presentation/flutter_bloc_cubit/shop_state.dart';

class FlutterBlocCubit extends StatelessWidget {
  const FlutterBlocCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
      builder: (context, state) => state.map(
          loading: (_) => Scaffold(
                appBar: AppBar(
                  title: Text('Flutter Bloc: Cubit'),
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
                  title: Text('Flutter Bloc: Cubit'),
                  actions: [
                    CartBadge(count: context.read<ShopCubit>().cartCount()),
                  ],
                ),
                body: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: loaded.products.length,
                  itemBuilder: (context, index) => ProductCard(
                    addToCart: context.read<ShopCubit>().addToCart,
                    removeFromCart: context.read<ShopCubit>().removeFromCart,
                    inCart: context
                        .read<ShopCubit>()
                        .inCart(loaded.products[index]),
                    product: loaded.products[index],
                  ),
                ),
              )),
    );
  }
}
