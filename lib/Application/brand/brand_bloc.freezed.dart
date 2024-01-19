// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, String image, dynamic active)
        addBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, String image, dynamic active)? addBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, String image, dynamic active)? addBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandEventCopyWith<$Res> {
  factory $BrandEventCopyWith(
          BrandEvent value, $Res Function(BrandEvent) then) =
      _$BrandEventCopyWithImpl<$Res, BrandEvent>;
}

/// @nodoc
class _$BrandEventCopyWithImpl<$Res, $Val extends BrandEvent>
    implements $BrandEventCopyWith<$Res> {
  _$BrandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BrandEventImplCopyWith<$Res> {
  factory _$$BrandEventImplCopyWith(
          _$BrandEventImpl value, $Res Function(_$BrandEventImpl) then) =
      __$$BrandEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BrandEventImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$BrandEventImpl>
    implements _$$BrandEventImplCopyWith<$Res> {
  __$$BrandEventImplCopyWithImpl(
      _$BrandEventImpl _value, $Res Function(_$BrandEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BrandEventImpl implements _BrandEvent {
  const _$BrandEventImpl();

  @override
  String toString() {
    return 'BrandEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BrandEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, String image, dynamic active)
        addBrand,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, String image, dynamic active)? addBrand,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, String image, dynamic active)? addBrand,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BrandEvent implements BrandEvent {
  const factory _BrandEvent() = _$BrandEventImpl;
}

/// @nodoc
abstract class _$$AddBrandImplCopyWith<$Res> {
  factory _$$AddBrandImplCopyWith(
          _$AddBrandImpl value, $Res Function(_$AddBrandImpl) then) =
      __$$AddBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String brandName, String image, dynamic active});
}

/// @nodoc
class __$$AddBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$AddBrandImpl>
    implements _$$AddBrandImplCopyWith<$Res> {
  __$$AddBrandImplCopyWithImpl(
      _$AddBrandImpl _value, $Res Function(_$AddBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = null,
    Object? image = null,
    Object? active = freezed,
  }) {
    return _then(_$AddBrandImpl(
      null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddBrandImpl implements _AddBrand {
  _$AddBrandImpl(this.brandName, this.image, this.active);

  @override
  final String brandName;
  @override
  final String image;
  @override
  final dynamic active;

  @override
  String toString() {
    return 'BrandEvent.addBrand(brandName: $brandName, image: $image, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBrandImpl &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brandName, image,
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      __$$AddBrandImplCopyWithImpl<_$AddBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, String image, dynamic active)
        addBrand,
  }) {
    return addBrand(brandName, image, active);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, String image, dynamic active)? addBrand,
  }) {
    return addBrand?.call(brandName, image, active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, String image, dynamic active)? addBrand,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(brandName, image, active);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
  }) {
    return addBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
  }) {
    return addBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(this);
    }
    return orElse();
  }
}

abstract class _AddBrand implements BrandEvent {
  factory _AddBrand(
          final String brandName, final String image, final dynamic active) =
      _$AddBrandImpl;

  String get brandName;
  String get image;
  dynamic get active;
  @JsonKey(ignore: true)
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandState {
  bool get isloading => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandStateCopyWith<BrandState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandStateCopyWith<$Res> {
  factory $BrandStateCopyWith(
          BrandState value, $Res Function(BrandState) then) =
      _$BrandStateCopyWithImpl<$Res, BrandState>;
  @useResult
  $Res call({bool isloading, BrandModel? brand});
}

/// @nodoc
class _$BrandStateCopyWithImpl<$Res, $Val extends BrandState>
    implements $BrandStateCopyWith<$Res> {
  _$BrandStateCopyWithImpl(this._value, this._then);

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
abstract class _$$BrandStateImplCopyWith<$Res>
    implements $BrandStateCopyWith<$Res> {
  factory _$$BrandStateImplCopyWith(
          _$BrandStateImpl value, $Res Function(_$BrandStateImpl) then) =
      __$$BrandStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, BrandModel? brand});
}

/// @nodoc
class __$$BrandStateImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$BrandStateImpl>
    implements _$$BrandStateImplCopyWith<$Res> {
  __$$BrandStateImplCopyWithImpl(
      _$BrandStateImpl _value, $Res Function(_$BrandStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? brand = freezed,
  }) {
    return _then(_$BrandStateImpl(
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

class _$BrandStateImpl implements _BrandState {
  const _$BrandStateImpl({required this.isloading, this.brand});

  @override
  final bool isloading;
  @override
  final BrandModel? brand;

  @override
  String toString() {
    return 'BrandState(isloading: $isloading, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      __$$BrandStateImplCopyWithImpl<_$BrandStateImpl>(this, _$identity);
}

abstract class _BrandState implements BrandState {
  const factory _BrandState(
      {required final bool isloading,
      final BrandModel? brand}) = _$BrandStateImpl;

  @override
  bool get isloading;
  @override
  BrandModel? get brand;
  @override
  @JsonKey(ignore: true)
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
