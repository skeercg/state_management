import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/main.config.dart';
import 'package:state_management/presentation/hooks_riverpod/hooks_riverpod.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();

  runApp(MyApp());
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
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<ShopBloc>(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: FlutterBlocBloc(),
//       ),
//     );
//   }
// }

/// MobX
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       create: (context) => getIt<ShopState>(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: FlutterMobX(),
//       ),
//     );
//   }
// }

/// Custom Bloc
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: CustomBloc(),
//     );
//   }
// }

/// Flutter Redux
// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//
//   final Store<ShopState> store = Store(
//     shopStateReducer,
//     middleware: [productsMiddleware],
//     initialState: ShopState(),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreProvider(
//       store: store,
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: FlutterRedux(),
//       ),
//     );
//   }
// }

/// Flutter Riverpod
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ProviderScope(
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: FlutterRiverpod(),
//       ),
//     );
//   }
// }

/// Hooks Riverpod
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HooksRiverpod(),
      ),
    );
  }
}
