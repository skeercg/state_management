import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:state_management/main.config.dart';
import 'package:state_management/presentation/flutter_bloc_cubit/flutter_bloc_cubit.dart';
import 'package:state_management/presentation/flutter_bloc_cubit/shop_cubit.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();

  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (context) => getIt<Cart>()),
//           ChangeNotifierProvider(create: (context) => getIt<Products>()),
//         ],
//         child: SimpleStateManagement(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context) => getIt<ShopCubit>(),
        child: FlutterBlocCubit(),
      ),
    );
  }
}
