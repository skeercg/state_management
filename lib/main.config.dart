// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repositories/products_repository.dart' as _i4;
import 'data/services_impl/products_service_impl.dart' as _i6;
import 'domain/services/products_service.dart' as _i5;
import 'presentation/flutter_bloc_bloc/shop_bloc.dart' as _i7;
import 'presentation/flutter_bloc_cubit/shop_cubit.dart' as _i8;
import 'presentation/simple_state_management/cart.dart' as _i3;
import 'presentation/simple_state_management/products.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.Cart>(() => _i3.Cart());
  gh.singleton<_i4.ProductsRepository>(_i4.ProductsRepositoryImpl());
  gh.singleton<_i5.ProductsService>(
      _i6.ProductsServiceImpl(get<_i4.ProductsRepository>()));
  gh.factory<_i7.ShopBloc>(
      () => _i7.ShopBloc(service: get<_i5.ProductsService>()));
  gh.factory<_i8.ShopCubit>(
      () => _i8.ShopCubit(service: get<_i5.ProductsService>()));
  gh.factory<_i9.Products>(
      () => _i9.Products(service: get<_i5.ProductsService>()));
  return get;
}
