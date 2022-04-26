import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:state_management/main.config.dart';
import 'package:state_management/presentation/simple_state_management/cart.dart';
import 'package:state_management/presentation/simple_state_management/products.dart';
import 'package:state_management/presentation/simple_state_management/simple_state_management.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => getIt<Cart>()),
          ChangeNotifierProvider(create: (context) => getIt<Products>()),
        ],
        child: SimpleStateManagement(),
      ),
    );
  }
}
