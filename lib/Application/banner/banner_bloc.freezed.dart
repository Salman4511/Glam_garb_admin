// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String description, String h1, String h2,
            String h3, String p1, String status, dynamic image)
        addBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BannerEvent value) $default, {
    required TResult Function(_AddBanner value) addBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BannerEvent value)? $default, {
    TResult? Function(_AddBanner value)? addBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BannerEvent value)? $default, {
    TResult Function(_AddBanner value)? addBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BannerEventImplCopyWith<$Res> {
  factory _$$BannerEventImplCopyWith(
          _$BannerEventImpl value, $Res Function(_$BannerEventImpl) then) =
      __$$BannerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BannerEventImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$BannerEventImpl>
    implements _$$BannerEventImplCopyWith<$Res> {
  __$$BannerEventImplCopyWithImpl(
      _$BannerEventImpl _value, $Res Function(_$BannerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BannerEventImpl implements _BannerEvent {
  const _$BannerEventImpl();

  @override
  String toString() {
    return 'BannerEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String description, String h1, String h2,
            String h3, String p1, String status, dynamic image)
        addBanner,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
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
    TResult Function(_BannerEvent value) $default, {
    required TResult Function(_AddBanner value) addBanner,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BannerEvent value)? $default, {
    TResult? Function(_AddBanner value)? addBanner,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BannerEvent value)? $default, {
    TResult Function(_AddBanner value)? addBanner,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BannerEvent implements BannerEvent {
  const factory _BannerEvent() = _$BannerEventImpl;
}

/// @nodoc
abstract class _$$AddBannerImplCopyWith<$Res> {
  factory _$$AddBannerImplCopyWith(
          _$AddBannerImpl value, $Res Function(_$AddBannerImpl) then) =
      __$$AddBannerImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String description,
      String h1,
      String h2,
      String h3,
      String p1,
      String status,
      dynamic image});
}

/// @nodoc
class __$$AddBannerImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$AddBannerImpl>
    implements _$$AddBannerImplCopyWith<$Res> {
  __$$AddBannerImplCopyWithImpl(
      _$AddBannerImpl _value, $Res Function(_$AddBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? h1 = null,
    Object? h2 = null,
    Object? h3 = null,
    Object? p1 = null,
    Object? status = null,
    Object? image = freezed,
  }) {
    return _then(_$AddBannerImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == h1
          ? _value.h1
          : h1 // ignore: cast_nullable_to_non_nullable
              as String,
      null == h2
          ? _value.h2
          : h2 // ignore: cast_nullable_to_non_nullable
              as String,
      null == h3
          ? _value.h3
          : h3 // ignore: cast_nullable_to_non_nullable
              as String,
      null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddBannerImpl implements _AddBanner {
  _$AddBannerImpl(this.description, this.h1, this.h2, this.h3, this.p1,
      this.status, this.image);

  @override
  final String description;
  @override
  final String h1;
  @override
  final String h2;
  @override
  final String h3;
  @override
  final String p1;
  @override
  final String status;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'BannerEvent.addBanner(description: $description, h1: $h1, h2: $h2, h3: $h3, p1: $p1, status: $status, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBannerImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.h1, h1) || other.h1 == h1) &&
            (identical(other.h2, h2) || other.h2 == h2) &&
            (identical(other.h3, h3) || other.h3 == h3) &&
            (identical(other.p1, p1) || other.p1 == p1) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, h1, h2, h3, p1,
      status, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBannerImplCopyWith<_$AddBannerImpl> get copyWith =>
      __$$AddBannerImplCopyWithImpl<_$AddBannerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String description, String h1, String h2,
            String h3, String p1, String status, dynamic image)
        addBanner,
  }) {
    return addBanner(description, h1, h2, h3, p1, status, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
  }) {
    return addBanner?.call(description, h1, h2, h3, p1, status, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String description, String h1, String h2, String h3,
            String p1, String status, dynamic image)?
        addBanner,
    required TResult orElse(),
  }) {
    if (addBanner != null) {
      return addBanner(description, h1, h2, h3, p1, status, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BannerEvent value) $default, {
    required TResult Function(_AddBanner value) addBanner,
  }) {
    return addBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BannerEvent value)? $default, {
    TResult? Function(_AddBanner value)? addBanner,
  }) {
    return addBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BannerEvent value)? $default, {
    TResult Function(_AddBanner value)? addBanner,
    required TResult orElse(),
  }) {
    if (addBanner != null) {
      return addBanner(this);
    }
    return orElse();
  }
}

abstract class _AddBanner implements BannerEvent {
  factory _AddBanner(
      final String description,
      final String h1,
      final String h2,
      final String h3,
      final String p1,
      final String status,
      final dynamic image) = _$AddBannerImpl;

  String get description;
  String get h1;
  String get h2;
  String get h3;
  String get p1;
  String get status;
  dynamic get image;
  @JsonKey(ignore: true)
  _$$AddBannerImplCopyWith<_$AddBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BannerState {
  bool get isLoading => throw _privateConstructorUsedError;
  BannerAddModel? get addBanner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerStateCopyWith<BannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
  @useResult
  $Res call({bool isLoading, BannerAddModel? addBanner});
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addBanner = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addBanner: freezed == addBanner
          ? _value.addBanner
          : addBanner // ignore: cast_nullable_to_non_nullable
              as BannerAddModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerStateImplCopyWith<$Res>
    implements $BannerStateCopyWith<$Res> {
  factory _$$BannerStateImplCopyWith(
          _$BannerStateImpl value, $Res Function(_$BannerStateImpl) then) =
      __$$BannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, BannerAddModel? addBanner});
}

/// @nodoc
class __$$BannerStateImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$BannerStateImpl>
    implements _$$BannerStateImplCopyWith<$Res> {
  __$$BannerStateImplCopyWithImpl(
      _$BannerStateImpl _value, $Res Function(_$BannerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addBanner = freezed,
  }) {
    return _then(_$BannerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addBanner: freezed == addBanner
          ? _value.addBanner
          : addBanner // ignore: cast_nullable_to_non_nullable
              as BannerAddModel?,
    ));
  }
}

/// @nodoc

class _$BannerStateImpl implements _BannerState {
  const _$BannerStateImpl({required this.isLoading, this.addBanner});

  @override
  final bool isLoading;
  @override
  final BannerAddModel? addBanner;

  @override
  String toString() {
    return 'BannerState(isLoading: $isLoading, addBanner: $addBanner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.addBanner, addBanner) ||
                other.addBanner == addBanner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, addBanner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      __$$BannerStateImplCopyWithImpl<_$BannerStateImpl>(this, _$identity);
}

abstract class _BannerState implements BannerState {
  const factory _BannerState(
      {required final bool isLoading,
      final BannerAddModel? addBanner}) = _$BannerStateImpl;

  @override
  bool get isLoading;
  @override
  BannerAddModel? get addBanner;
  @override
  @JsonKey(ignore: true)
  _$$BannerStateImplCopyWith<_$BannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
