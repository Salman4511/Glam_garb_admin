// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)
        addCoupon,
    required TResult Function(
            String couponId,
            String couponCode,
            String couponDescr,
            int discount,
            int minAmount,
            int maxAmount,
            String expiry)
        editCoupon,
    required TResult Function(String couponId) deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult? Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult? Function(String couponId)? deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult Function(String couponId)? deleteCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_EditCoupon value) editCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_EditCoupon value)? editCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_EditCoupon value)? editCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEventCopyWith<$Res> {
  factory $CouponEventCopyWith(
          CouponEvent value, $Res Function(CouponEvent) then) =
      _$CouponEventCopyWithImpl<$Res, CouponEvent>;
}

/// @nodoc
class _$CouponEventCopyWithImpl<$Res, $Val extends CouponEvent>
    implements $CouponEventCopyWith<$Res> {
  _$CouponEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CouponEventImplCopyWith<$Res> {
  factory _$$CouponEventImplCopyWith(
          _$CouponEventImpl value, $Res Function(_$CouponEventImpl) then) =
      __$$CouponEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CouponEventImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$CouponEventImpl>
    implements _$$CouponEventImplCopyWith<$Res> {
  __$$CouponEventImplCopyWithImpl(
      _$CouponEventImpl _value, $Res Function(_$CouponEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CouponEventImpl implements _CouponEvent {
  const _$CouponEventImpl();

  @override
  String toString() {
    return 'CouponEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CouponEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)
        addCoupon,
    required TResult Function(
            String couponId,
            String couponCode,
            String couponDescr,
            int discount,
            int minAmount,
            int maxAmount,
            String expiry)
        editCoupon,
    required TResult Function(String couponId) deleteCoupon,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult? Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult? Function(String couponId)? deleteCoupon,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult Function(String couponId)? deleteCoupon,
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
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_EditCoupon value) editCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_EditCoupon value)? editCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_EditCoupon value)? editCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CouponEvent implements CouponEvent {
  const factory _CouponEvent() = _$CouponEventImpl;
}

/// @nodoc
abstract class _$$AddCouponImplCopyWith<$Res> {
  factory _$$AddCouponImplCopyWith(
          _$AddCouponImpl value, $Res Function(_$AddCouponImpl) then) =
      __$$AddCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String couponCode,
      String couponDescr,
      int discount,
      int minAmount,
      int maxAmount,
      String expiry});
}

/// @nodoc
class __$$AddCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$AddCouponImpl>
    implements _$$AddCouponImplCopyWith<$Res> {
  __$$AddCouponImplCopyWithImpl(
      _$AddCouponImpl _value, $Res Function(_$AddCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? couponDescr = null,
    Object? discount = null,
    Object? minAmount = null,
    Object? maxAmount = null,
    Object? expiry = null,
  }) {
    return _then(_$AddCouponImpl(
      null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == couponDescr
          ? _value.couponDescr
          : couponDescr // ignore: cast_nullable_to_non_nullable
              as String,
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int,
      null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCouponImpl implements _AddCoupon {
  _$AddCouponImpl(this.couponCode, this.couponDescr, this.discount,
      this.minAmount, this.maxAmount, this.expiry);

  @override
  final String couponCode;
  @override
  final String couponDescr;
  @override
  final int discount;
  @override
  final int minAmount;
  @override
  final int maxAmount;
  @override
  final String expiry;

  @override
  String toString() {
    return 'CouponEvent.addCoupon(couponCode: $couponCode, couponDescr: $couponDescr, discount: $discount, minAmount: $minAmount, maxAmount: $maxAmount, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCouponImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.couponDescr, couponDescr) ||
                other.couponDescr == couponDescr) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode, couponDescr,
      discount, minAmount, maxAmount, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      __$$AddCouponImplCopyWithImpl<_$AddCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)
        addCoupon,
    required TResult Function(
            String couponId,
            String couponCode,
            String couponDescr,
            int discount,
            int minAmount,
            int maxAmount,
            String expiry)
        editCoupon,
    required TResult Function(String couponId) deleteCoupon,
  }) {
    return addCoupon(
        couponCode, couponDescr, discount, minAmount, maxAmount, expiry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult? Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult? Function(String couponId)? deleteCoupon,
  }) {
    return addCoupon?.call(
        couponCode, couponDescr, discount, minAmount, maxAmount, expiry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult Function(String couponId)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(
          couponCode, couponDescr, discount, minAmount, maxAmount, expiry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_EditCoupon value) editCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return addCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_EditCoupon value)? editCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return addCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_EditCoupon value)? editCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (addCoupon != null) {
      return addCoupon(this);
    }
    return orElse();
  }
}

abstract class _AddCoupon implements CouponEvent {
  factory _AddCoupon(
      final String couponCode,
      final String couponDescr,
      final int discount,
      final int minAmount,
      final int maxAmount,
      final String expiry) = _$AddCouponImpl;

  String get couponCode;
  String get couponDescr;
  int get discount;
  int get minAmount;
  int get maxAmount;
  String get expiry;
  @JsonKey(ignore: true)
  _$$AddCouponImplCopyWith<_$AddCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCouponImplCopyWith<$Res> {
  factory _$$EditCouponImplCopyWith(
          _$EditCouponImpl value, $Res Function(_$EditCouponImpl) then) =
      __$$EditCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String couponId,
      String couponCode,
      String couponDescr,
      int discount,
      int minAmount,
      int maxAmount,
      String expiry});
}

/// @nodoc
class __$$EditCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$EditCouponImpl>
    implements _$$EditCouponImplCopyWith<$Res> {
  __$$EditCouponImplCopyWithImpl(
      _$EditCouponImpl _value, $Res Function(_$EditCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = null,
    Object? couponCode = null,
    Object? couponDescr = null,
    Object? discount = null,
    Object? minAmount = null,
    Object? maxAmount = null,
    Object? expiry = null,
  }) {
    return _then(_$EditCouponImpl(
      null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == couponDescr
          ? _value.couponDescr
          : couponDescr // ignore: cast_nullable_to_non_nullable
              as String,
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int,
      null == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCouponImpl implements _EditCoupon {
  _$EditCouponImpl(this.couponId, this.couponCode, this.couponDescr,
      this.discount, this.minAmount, this.maxAmount, this.expiry);

  @override
  final String couponId;
  @override
  final String couponCode;
  @override
  final String couponDescr;
  @override
  final int discount;
  @override
  final int minAmount;
  @override
  final int maxAmount;
  @override
  final String expiry;

  @override
  String toString() {
    return 'CouponEvent.editCoupon(couponId: $couponId, couponCode: $couponCode, couponDescr: $couponDescr, discount: $discount, minAmount: $minAmount, maxAmount: $maxAmount, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCouponImpl &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.couponDescr, couponDescr) ||
                other.couponDescr == couponDescr) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponId, couponCode,
      couponDescr, discount, minAmount, maxAmount, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCouponImplCopyWith<_$EditCouponImpl> get copyWith =>
      __$$EditCouponImplCopyWithImpl<_$EditCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)
        addCoupon,
    required TResult Function(
            String couponId,
            String couponCode,
            String couponDescr,
            int discount,
            int minAmount,
            int maxAmount,
            String expiry)
        editCoupon,
    required TResult Function(String couponId) deleteCoupon,
  }) {
    return editCoupon(couponId, couponCode, couponDescr, discount, minAmount,
        maxAmount, expiry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult? Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult? Function(String couponId)? deleteCoupon,
  }) {
    return editCoupon?.call(couponId, couponCode, couponDescr, discount,
        minAmount, maxAmount, expiry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult Function(String couponId)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (editCoupon != null) {
      return editCoupon(couponId, couponCode, couponDescr, discount, minAmount,
          maxAmount, expiry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_EditCoupon value) editCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return editCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_EditCoupon value)? editCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return editCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_EditCoupon value)? editCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (editCoupon != null) {
      return editCoupon(this);
    }
    return orElse();
  }
}

abstract class _EditCoupon implements CouponEvent {
  factory _EditCoupon(
      final String couponId,
      final String couponCode,
      final String couponDescr,
      final int discount,
      final int minAmount,
      final int maxAmount,
      final String expiry) = _$EditCouponImpl;

  String get couponId;
  String get couponCode;
  String get couponDescr;
  int get discount;
  int get minAmount;
  int get maxAmount;
  String get expiry;
  @JsonKey(ignore: true)
  _$$EditCouponImplCopyWith<_$EditCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCouponImplCopyWith<$Res> {
  factory _$$DeleteCouponImplCopyWith(
          _$DeleteCouponImpl value, $Res Function(_$DeleteCouponImpl) then) =
      __$$DeleteCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String couponId});
}

/// @nodoc
class __$$DeleteCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$DeleteCouponImpl>
    implements _$$DeleteCouponImplCopyWith<$Res> {
  __$$DeleteCouponImplCopyWithImpl(
      _$DeleteCouponImpl _value, $Res Function(_$DeleteCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = null,
  }) {
    return _then(_$DeleteCouponImpl(
      null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCouponImpl implements _DeleteCoupon {
  _$DeleteCouponImpl(this.couponId);

  @override
  final String couponId;

  @override
  String toString() {
    return 'CouponEvent.deleteCoupon(couponId: $couponId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCouponImpl &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      __$$DeleteCouponImplCopyWithImpl<_$DeleteCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)
        addCoupon,
    required TResult Function(
            String couponId,
            String couponCode,
            String couponDescr,
            int discount,
            int minAmount,
            int maxAmount,
            String expiry)
        editCoupon,
    required TResult Function(String couponId) deleteCoupon,
  }) {
    return deleteCoupon(couponId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult? Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult? Function(String couponId)? deleteCoupon,
  }) {
    return deleteCoupon?.call(couponId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String couponCode, String couponDescr, int discount,
            int minAmount, int maxAmount, String expiry)?
        addCoupon,
    TResult Function(String couponId, String couponCode, String couponDescr,
            int discount, int minAmount, int maxAmount, String expiry)?
        editCoupon,
    TResult Function(String couponId)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(couponId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_AddCoupon value) addCoupon,
    required TResult Function(_EditCoupon value) editCoupon,
    required TResult Function(_DeleteCoupon value) deleteCoupon,
  }) {
    return deleteCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_AddCoupon value)? addCoupon,
    TResult? Function(_EditCoupon value)? editCoupon,
    TResult? Function(_DeleteCoupon value)? deleteCoupon,
  }) {
    return deleteCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_AddCoupon value)? addCoupon,
    TResult Function(_EditCoupon value)? editCoupon,
    TResult Function(_DeleteCoupon value)? deleteCoupon,
    required TResult orElse(),
  }) {
    if (deleteCoupon != null) {
      return deleteCoupon(this);
    }
    return orElse();
  }
}

abstract class _DeleteCoupon implements CouponEvent {
  factory _DeleteCoupon(final String couponId) = _$DeleteCouponImpl;

  String get couponId;
  @JsonKey(ignore: true)
  _$$DeleteCouponImplCopyWith<_$DeleteCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CouponState {
  bool get isLoading => throw _privateConstructorUsedError;
  CouponAddModel? get addCoupon => throw _privateConstructorUsedError;
  CouponEditModel? get editCoupon => throw _privateConstructorUsedError;
  CouponDelModel? get delCoupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponStateCopyWith<CouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
  @useResult
  $Res call(
      {bool isLoading,
      CouponAddModel? addCoupon,
      CouponEditModel? editCoupon,
      CouponDelModel? delCoupon});
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addCoupon = freezed,
    Object? editCoupon = freezed,
    Object? delCoupon = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addCoupon: freezed == addCoupon
          ? _value.addCoupon
          : addCoupon // ignore: cast_nullable_to_non_nullable
              as CouponAddModel?,
      editCoupon: freezed == editCoupon
          ? _value.editCoupon
          : editCoupon // ignore: cast_nullable_to_non_nullable
              as CouponEditModel?,
      delCoupon: freezed == delCoupon
          ? _value.delCoupon
          : delCoupon // ignore: cast_nullable_to_non_nullable
              as CouponDelModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponStateImplCopyWith<$Res>
    implements $CouponStateCopyWith<$Res> {
  factory _$$CouponStateImplCopyWith(
          _$CouponStateImpl value, $Res Function(_$CouponStateImpl) then) =
      __$$CouponStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      CouponAddModel? addCoupon,
      CouponEditModel? editCoupon,
      CouponDelModel? delCoupon});
}

/// @nodoc
class __$$CouponStateImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponStateImpl>
    implements _$$CouponStateImplCopyWith<$Res> {
  __$$CouponStateImplCopyWithImpl(
      _$CouponStateImpl _value, $Res Function(_$CouponStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addCoupon = freezed,
    Object? editCoupon = freezed,
    Object? delCoupon = freezed,
  }) {
    return _then(_$CouponStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addCoupon: freezed == addCoupon
          ? _value.addCoupon
          : addCoupon // ignore: cast_nullable_to_non_nullable
              as CouponAddModel?,
      editCoupon: freezed == editCoupon
          ? _value.editCoupon
          : editCoupon // ignore: cast_nullable_to_non_nullable
              as CouponEditModel?,
      delCoupon: freezed == delCoupon
          ? _value.delCoupon
          : delCoupon // ignore: cast_nullable_to_non_nullable
              as CouponDelModel?,
    ));
  }
}

/// @nodoc

class _$CouponStateImpl implements _CouponState {
  const _$CouponStateImpl(
      {required this.isLoading,
      this.addCoupon,
      this.editCoupon,
      this.delCoupon});

  @override
  final bool isLoading;
  @override
  final CouponAddModel? addCoupon;
  @override
  final CouponEditModel? editCoupon;
  @override
  final CouponDelModel? delCoupon;

  @override
  String toString() {
    return 'CouponState(isLoading: $isLoading, addCoupon: $addCoupon, editCoupon: $editCoupon, delCoupon: $delCoupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.addCoupon, addCoupon) ||
                other.addCoupon == addCoupon) &&
            (identical(other.editCoupon, editCoupon) ||
                other.editCoupon == editCoupon) &&
            (identical(other.delCoupon, delCoupon) ||
                other.delCoupon == delCoupon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, addCoupon, editCoupon, delCoupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      __$$CouponStateImplCopyWithImpl<_$CouponStateImpl>(this, _$identity);
}

abstract class _CouponState implements CouponState {
  const factory _CouponState(
      {required final bool isLoading,
      final CouponAddModel? addCoupon,
      final CouponEditModel? editCoupon,
      final CouponDelModel? delCoupon}) = _$CouponStateImpl;

  @override
  bool get isLoading;
  @override
  CouponAddModel? get addCoupon;
  @override
  CouponEditModel? get editCoupon;
  @override
  CouponDelModel? get delCoupon;
  @override
  @JsonKey(ignore: true)
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
