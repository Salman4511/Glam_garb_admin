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
    required TResult Function(String brandName, dynamic active, dynamic image)
        addBrand,
    required TResult Function(String id) deleteBrand,
    required TResult Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)
        editBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, dynamic active, dynamic image)?
        addBrand,
    TResult? Function(String id)? deleteBrand,
    TResult? Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)?
        editBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, dynamic active, dynamic image)? addBrand,
    TResult Function(String id)? deleteBrand,
    TResult Function(String brandName, dynamic active, dynamic image, String id,
            String oldName)?
        editBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_EditBrand value) editBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_EditBrand value)? editBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_EditBrand value)? editBrand,
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
    required TResult Function(String brandName, dynamic active, dynamic image)
        addBrand,
    required TResult Function(String id) deleteBrand,
    required TResult Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)
        editBrand,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, dynamic active, dynamic image)?
        addBrand,
    TResult? Function(String id)? deleteBrand,
    TResult? Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)?
        editBrand,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, dynamic active, dynamic image)? addBrand,
    TResult Function(String id)? deleteBrand,
    TResult Function(String brandName, dynamic active, dynamic image, String id,
            String oldName)?
        editBrand,
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
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_EditBrand value) editBrand,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_EditBrand value)? editBrand,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_EditBrand value)? editBrand,
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
  $Res call({String brandName, dynamic active, dynamic image});
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
    Object? active = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AddBrandImpl(
      null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddBrandImpl implements _AddBrand {
  _$AddBrandImpl(this.brandName, this.active, this.image);

  @override
  final String brandName;
  @override
  final dynamic active;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'BrandEvent.addBrand(brandName: $brandName, active: $active, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBrandImpl &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      brandName,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      __$$AddBrandImplCopyWithImpl<_$AddBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, dynamic active, dynamic image)
        addBrand,
    required TResult Function(String id) deleteBrand,
    required TResult Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)
        editBrand,
  }) {
    return addBrand(brandName, active, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, dynamic active, dynamic image)?
        addBrand,
    TResult? Function(String id)? deleteBrand,
    TResult? Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)?
        editBrand,
  }) {
    return addBrand?.call(brandName, active, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, dynamic active, dynamic image)? addBrand,
    TResult Function(String id)? deleteBrand,
    TResult Function(String brandName, dynamic active, dynamic image, String id,
            String oldName)?
        editBrand,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(brandName, active, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_EditBrand value) editBrand,
  }) {
    return addBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_EditBrand value)? editBrand,
  }) {
    return addBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_EditBrand value)? editBrand,
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
          final String brandName, final dynamic active, final dynamic image) =
      _$AddBrandImpl;

  String get brandName;
  dynamic get active;
  dynamic get image;
  @JsonKey(ignore: true)
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBrandImplCopyWith<$Res> {
  factory _$$DeleteBrandImplCopyWith(
          _$DeleteBrandImpl value, $Res Function(_$DeleteBrandImpl) then) =
      __$$DeleteBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$DeleteBrandImpl>
    implements _$$DeleteBrandImplCopyWith<$Res> {
  __$$DeleteBrandImplCopyWithImpl(
      _$DeleteBrandImpl _value, $Res Function(_$DeleteBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteBrandImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBrandImpl implements _DeleteBrand {
  _$DeleteBrandImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'BrandEvent.deleteBrand(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBrandImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      __$$DeleteBrandImplCopyWithImpl<_$DeleteBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, dynamic active, dynamic image)
        addBrand,
    required TResult Function(String id) deleteBrand,
    required TResult Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)
        editBrand,
  }) {
    return deleteBrand(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, dynamic active, dynamic image)?
        addBrand,
    TResult? Function(String id)? deleteBrand,
    TResult? Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)?
        editBrand,
  }) {
    return deleteBrand?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, dynamic active, dynamic image)? addBrand,
    TResult Function(String id)? deleteBrand,
    TResult Function(String brandName, dynamic active, dynamic image, String id,
            String oldName)?
        editBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_EditBrand value) editBrand,
  }) {
    return deleteBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_EditBrand value)? editBrand,
  }) {
    return deleteBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_EditBrand value)? editBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(this);
    }
    return orElse();
  }
}

abstract class _DeleteBrand implements BrandEvent {
  factory _DeleteBrand(final String id) = _$DeleteBrandImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditBrandImplCopyWith<$Res> {
  factory _$$EditBrandImplCopyWith(
          _$EditBrandImpl value, $Res Function(_$EditBrandImpl) then) =
      __$$EditBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String brandName,
      dynamic active,
      dynamic image,
      String id,
      String oldName});
}

/// @nodoc
class __$$EditBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$EditBrandImpl>
    implements _$$EditBrandImplCopyWith<$Res> {
  __$$EditBrandImplCopyWithImpl(
      _$EditBrandImpl _value, $Res Function(_$EditBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = null,
    Object? active = freezed,
    Object? image = freezed,
    Object? id = null,
    Object? oldName = null,
  }) {
    return _then(_$EditBrandImpl(
      null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == oldName
          ? _value.oldName
          : oldName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditBrandImpl implements _EditBrand {
  _$EditBrandImpl(
      this.brandName, this.active, this.image, this.id, this.oldName);

  @override
  final String brandName;
  @override
  final dynamic active;
  @override
  final dynamic image;
  @override
  final String id;
  @override
  final String oldName;

  @override
  String toString() {
    return 'BrandEvent.editBrand(brandName: $brandName, active: $active, image: $image, id: $id, oldName: $oldName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditBrandImpl &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.oldName, oldName) || other.oldName == oldName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      brandName,
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(image),
      id,
      oldName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditBrandImplCopyWith<_$EditBrandImpl> get copyWith =>
      __$$EditBrandImplCopyWithImpl<_$EditBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String brandName, dynamic active, dynamic image)
        addBrand,
    required TResult Function(String id) deleteBrand,
    required TResult Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)
        editBrand,
  }) {
    return editBrand(brandName, active, image, id, oldName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String brandName, dynamic active, dynamic image)?
        addBrand,
    TResult? Function(String id)? deleteBrand,
    TResult? Function(String brandName, dynamic active, dynamic image,
            String id, String oldName)?
        editBrand,
  }) {
    return editBrand?.call(brandName, active, image, id, oldName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String brandName, dynamic active, dynamic image)? addBrand,
    TResult Function(String id)? deleteBrand,
    TResult Function(String brandName, dynamic active, dynamic image, String id,
            String oldName)?
        editBrand,
    required TResult orElse(),
  }) {
    if (editBrand != null) {
      return editBrand(brandName, active, image, id, oldName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BrandEvent value) $default, {
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_EditBrand value) editBrand,
  }) {
    return editBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BrandEvent value)? $default, {
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_EditBrand value)? editBrand,
  }) {
    return editBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BrandEvent value)? $default, {
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_EditBrand value)? editBrand,
    required TResult orElse(),
  }) {
    if (editBrand != null) {
      return editBrand(this);
    }
    return orElse();
  }
}

abstract class _EditBrand implements BrandEvent {
  factory _EditBrand(
      final String brandName,
      final dynamic active,
      final dynamic image,
      final String id,
      final String oldName) = _$EditBrandImpl;

  String get brandName;
  dynamic get active;
  dynamic get image;
  String get id;
  String get oldName;
  @JsonKey(ignore: true)
  _$$EditBrandImplCopyWith<_$EditBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandState {
  bool get isloading => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  BrandDeleteModel? get delBrand => throw _privateConstructorUsedError;
  BrandEditModel? get editBrand => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isloading,
      BrandModel? brand,
      BrandDeleteModel? delBrand,
      BrandEditModel? editBrand});
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
    Object? delBrand = freezed,
    Object? editBrand = freezed,
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
      delBrand: freezed == delBrand
          ? _value.delBrand
          : delBrand // ignore: cast_nullable_to_non_nullable
              as BrandDeleteModel?,
      editBrand: freezed == editBrand
          ? _value.editBrand
          : editBrand // ignore: cast_nullable_to_non_nullable
              as BrandEditModel?,
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
  $Res call(
      {bool isloading,
      BrandModel? brand,
      BrandDeleteModel? delBrand,
      BrandEditModel? editBrand});
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
    Object? delBrand = freezed,
    Object? editBrand = freezed,
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
      delBrand: freezed == delBrand
          ? _value.delBrand
          : delBrand // ignore: cast_nullable_to_non_nullable
              as BrandDeleteModel?,
      editBrand: freezed == editBrand
          ? _value.editBrand
          : editBrand // ignore: cast_nullable_to_non_nullable
              as BrandEditModel?,
    ));
  }
}

/// @nodoc

class _$BrandStateImpl implements _BrandState {
  const _$BrandStateImpl(
      {required this.isloading, this.brand, this.delBrand, this.editBrand});

  @override
  final bool isloading;
  @override
  final BrandModel? brand;
  @override
  final BrandDeleteModel? delBrand;
  @override
  final BrandEditModel? editBrand;

  @override
  String toString() {
    return 'BrandState(isloading: $isloading, brand: $brand, delBrand: $delBrand, editBrand: $editBrand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.delBrand, delBrand) ||
                other.delBrand == delBrand) &&
            (identical(other.editBrand, editBrand) ||
                other.editBrand == editBrand));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isloading, brand, delBrand, editBrand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      __$$BrandStateImplCopyWithImpl<_$BrandStateImpl>(this, _$identity);
}

abstract class _BrandState implements BrandState {
  const factory _BrandState(
      {required final bool isloading,
      final BrandModel? brand,
      final BrandDeleteModel? delBrand,
      final BrandEditModel? editBrand}) = _$BrandStateImpl;

  @override
  bool get isloading;
  @override
  BrandModel? get brand;
  @override
  BrandDeleteModel? get delBrand;
  @override
  BrandEditModel? get editBrand;
  @override
  @JsonKey(ignore: true)
  _$$BrandStateImplCopyWith<_$BrandStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
