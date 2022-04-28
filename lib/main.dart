import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/main.config.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/flutter_bloc_bloc.dart';
import 'package:state_management/presentation/flutter_bloc_bloc/shop_bloc.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();

  runApp(const MyApp());
}

/// Simple State Management
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => getIt<Cart>()),
//         ChangeNotifierProvider(create: (context) => getIt<Products>()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: SimpleStateManagement(),
//       ),
//     );
//   }
// }

/// Flutter Bloc: Cubit
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<ShopCubit>(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: FlutterBlocCubit(),
//       ),
//     );
//   }
// }

/// Flutter Bloc: Bloc
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShopBloc>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: FlutterBlocBloc(),
      ),
    );
  }
}
