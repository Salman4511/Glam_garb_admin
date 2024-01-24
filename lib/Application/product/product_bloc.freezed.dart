// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductEventImplCopyWith<$Res> {
  factory _$$ProductEventImplCopyWith(
          _$ProductEventImpl value, $Res Function(_$ProductEventImpl) then) =
      __$$ProductEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductEventImpl>
    implements _$$ProductEventImplCopyWith<$Res> {
  __$$ProductEventImplCopyWithImpl(
      _$ProductEventImpl _value, $Res Function(_$ProductEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductEventImpl implements _ProductEvent {
  const _$ProductEventImpl();

  @override
  String toString() {
    return 'ProductEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ProductEvent implements ProductEvent {
  const factory _ProductEvent() = _$ProductEventImpl;
}

/// @nodoc
mixin _$ProductState {
  bool get isloading => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call({bool isloading, BrandModel? brand});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, BrandModel? brand});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? brand = freezed,
  }) {
    return _then(_$ProductStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl({required this.isloading, this.brand});

  @override
  final bool isloading;
  @override
  final BrandModel? brand;

  @override
  String toString() {
    return 'ProductState(isloading: $isloading, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final bool isloading,
      final BrandModel? brand}) = _$ProductStateImpl;

  @override
  bool get isloading;
  @override
  BrandModel? get brand;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
