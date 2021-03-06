// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopStateLoading value) loading,
    required TResult Function(ShopStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  final ShopState _value;
  // ignore: unused_field
  final $Res Function(ShopState) _then;
}

/// @nodoc
abstract class _$$ShopStateLoadingCopyWith<$Res> {
  factory _$$ShopStateLoadingCopyWith(
          _$ShopStateLoading value, $Res Function(_$ShopStateLoading) then) =
      __$$ShopStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopStateLoadingCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res>
    implements _$$ShopStateLoadingCopyWith<$Res> {
  __$$ShopStateLoadingCopyWithImpl(
      _$ShopStateLoading _value, $Res Function(_$ShopStateLoading) _then)
      : super(_value, (v) => _then(v as _$ShopStateLoading));

  @override
  _$ShopStateLoading get _value => super._value as _$ShopStateLoading;
}

/// @nodoc

class _$ShopStateLoading implements ShopStateLoading {
  const _$ShopStateLoading();

  @override
  String toString() {
    return 'ShopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopStateLoading value) loading,
    required TResult Function(ShopStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShopStateLoading implements ShopState {
  const factory ShopStateLoading() = _$ShopStateLoading;
}

/// @nodoc
abstract class _$$ShopStateLoadedCopyWith<$Res> {
  factory _$$ShopStateLoadedCopyWith(
          _$ShopStateLoaded value, $Res Function(_$ShopStateLoaded) then) =
      __$$ShopStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ShopStateLoadedCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res>
    implements _$$ShopStateLoadedCopyWith<$Res> {
  __$$ShopStateLoadedCopyWithImpl(
      _$ShopStateLoaded _value, $Res Function(_$ShopStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ShopStateLoaded));

  @override
  _$ShopStateLoaded get _value => super._value as _$ShopStateLoaded;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ShopStateLoaded(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ShopStateLoaded implements ShopStateLoaded {
  const _$ShopStateLoaded({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ShopState.loaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateLoaded &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$ShopStateLoadedCopyWith<_$ShopStateLoaded> get copyWith =>
      __$$ShopStateLoadedCopyWithImpl<_$ShopStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopStateLoading value) loading,
    required TResult Function(ShopStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopStateLoading value)? loading,
    TResult Function(ShopStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShopStateLoaded implements ShopState {
  const factory ShopStateLoaded({required final List<Product> products}) =
      _$ShopStateLoaded;

  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ShopStateLoadedCopyWith<_$ShopStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
