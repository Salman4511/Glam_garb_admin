// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)
        addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)?
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(String name, dynamic active, String id, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryEvent value) $default, {
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_EditCategory value) editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryEvent value)? $default, {
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_EditCategory value)? editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryEvent value)? $default, {
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_EditCategory value)? editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryEventImplCopyWith<$Res> {
  factory _$$CategoryEventImplCopyWith(
          _$CategoryEventImpl value, $Res Function(_$CategoryEventImpl) then) =
      __$$CategoryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryEventImpl>
    implements _$$CategoryEventImplCopyWith<$Res> {
  __$$CategoryEventImplCopyWithImpl(
      _$CategoryEventImpl _value, $Res Function(_$CategoryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryEventImpl implements _CategoryEvent {
  const _$CategoryEventImpl();

  @override
  String toString() {
    return 'CategoryEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)
        addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)
        editCategory,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)?
        editCategory,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(String name, dynamic active, String id, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        editCategory,
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
    TResult Function(_CategoryEvent value) $default, {
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_EditCategory value) editCategory,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryEvent value)? $default, {
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_EditCategory value)? editCategory,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryEvent value)? $default, {
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CategoryEvent implements CategoryEvent {
  const factory _CategoryEvent() = _$CategoryEventImpl;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      dynamic active,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? active = freezed,
    Object? categoryOffer = freezed,
    Object? minAmount = freezed,
    Object? maxDiscount = freezed,
    Object? date = freezed,
  }) {
    return _then(_$AddCategoryImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == categoryOffer
          ? _value.categoryOffer
          : categoryOffer // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements _AddCategory {
  _$AddCategoryImpl(this.name, this.active, this.categoryOffer, this.minAmount,
      this.maxDiscount, this.date);

  @override
  final String name;
  @override
  final dynamic active;
  @override
  final int? categoryOffer;
  @override
  final int? minAmount;
  @override
  final int? maxDiscount;
  @override
  final String? date;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(name: $name, active: $active, categoryOffer: $categoryOffer, minAmount: $minAmount, maxDiscount: $maxDiscount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            (identical(other.categoryOffer, categoryOffer) ||
                other.categoryOffer == categoryOffer) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(active),
      categoryOffer,
      minAmount,
      maxDiscount,
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)
        addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)
        editCategory,
  }) {
    return addCategory(
        name, active, categoryOffer, minAmount, maxDiscount, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)?
        editCategory,
  }) {
    return addCategory?.call(
        name, active, categoryOffer, minAmount, maxDiscount, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(String name, dynamic active, String id, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(
          name, active, categoryOffer, minAmount, maxDiscount, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryEvent value) $default, {
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_EditCategory value) editCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryEvent value)? $default, {
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_EditCategory value)? editCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryEvent value)? $default, {
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements CategoryEvent {
  factory _AddCategory(
      final String name,
      final dynamic active,
      final int? categoryOffer,
      final int? minAmount,
      final int? maxDiscount,
      final String? date) = _$AddCategoryImpl;

  String get name;
  dynamic get active;
  int? get categoryOffer;
  int? get minAmount;
  int? get maxDiscount;
  String? get date;
  @JsonKey(ignore: true)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCategoryImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryImpl implements _DeleteCategory {
  _$DeleteCategoryImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategory(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)
        addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)
        editCategory,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)?
        editCategory,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(String name, dynamic active, String id, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryEvent value) $default, {
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_EditCategory value) editCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryEvent value)? $default, {
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_EditCategory value)? editCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryEvent value)? $default, {
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoryEvent {
  factory _DeleteCategory(final String id) = _$DeleteCategoryImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCategoryImplCopyWith<$Res> {
  factory _$$EditCategoryImplCopyWith(
          _$EditCategoryImpl value, $Res Function(_$EditCategoryImpl) then) =
      __$$EditCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      dynamic active,
      String id,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date});
}

/// @nodoc
class __$$EditCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$EditCategoryImpl>
    implements _$$EditCategoryImplCopyWith<$Res> {
  __$$EditCategoryImplCopyWithImpl(
      _$EditCategoryImpl _value, $Res Function(_$EditCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? active = freezed,
    Object? id = null,
    Object? categoryOffer = freezed,
    Object? minAmount = freezed,
    Object? maxDiscount = freezed,
    Object? date = freezed,
  }) {
    return _then(_$EditCategoryImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == categoryOffer
          ? _value.categoryOffer
          : categoryOffer // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditCategoryImpl implements _EditCategory {
  _$EditCategoryImpl(this.name, this.active, this.id, this.categoryOffer,
      this.minAmount, this.maxDiscount, this.date);

  @override
  final String name;
  @override
  final dynamic active;
  @override
  final String id;
  @override
  final int? categoryOffer;
  @override
  final int? minAmount;
  @override
  final int? maxDiscount;
  @override
  final String? date;

  @override
  String toString() {
    return 'CategoryEvent.editCategory(name: $name, active: $active, id: $id, categoryOffer: $categoryOffer, minAmount: $minAmount, maxDiscount: $maxDiscount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryOffer, categoryOffer) ||
                other.categoryOffer == categoryOffer) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(active),
      id,
      categoryOffer,
      minAmount,
      maxDiscount,
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCategoryImplCopyWith<_$EditCategoryImpl> get copyWith =>
      __$$EditCategoryImplCopyWithImpl<_$EditCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)
        addCategory,
    required TResult Function(String id) deleteCategory,
    required TResult Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)
        editCategory,
  }) {
    return editCategory(
        name, active, id, categoryOffer, minAmount, maxDiscount, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult? Function(String id)? deleteCategory,
    TResult? Function(String name, dynamic active, String id,
            int? categoryOffer, int? minAmount, int? maxDiscount, String? date)?
        editCategory,
  }) {
    return editCategory?.call(
        name, active, id, categoryOffer, minAmount, maxDiscount, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, dynamic active, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        addCategory,
    TResult Function(String id)? deleteCategory,
    TResult Function(String name, dynamic active, String id, int? categoryOffer,
            int? minAmount, int? maxDiscount, String? date)?
        editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(
          name, active, id, categoryOffer, minAmount, maxDiscount, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CategoryEvent value) $default, {
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_EditCategory value) editCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CategoryEvent value)? $default, {
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_EditCategory value)? editCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CategoryEvent value)? $default, {
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_EditCategory value)? editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class _EditCategory implements CategoryEvent {
  factory _EditCategory(
      final String name,
      final dynamic active,
      final String id,
      final int? categoryOffer,
      final int? minAmount,
      final int? maxDiscount,
      final String? date) = _$EditCategoryImpl;

  String get name;
  dynamic get active;
  String get id;
  int? get categoryOffer;
  int? get minAmount;
  int? get maxDiscount;
  String? get date;
  @JsonKey(ignore: true)
  _$$EditCategoryImplCopyWith<_$EditCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  CategoryDeleteModel? get delCategory => throw _privateConstructorUsedError;
  CategoryEditModel? get editCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      CategoryModel? category,
      CategoryDeleteModel? delCategory,
      CategoryEditModel? editCategory});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? category = freezed,
    Object? delCategory = freezed,
    Object? editCategory = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      delCategory: freezed == delCategory
          ? _value.delCategory
          : delCategory // ignore: cast_nullable_to_non_nullable
              as CategoryDeleteModel?,
      editCategory: freezed == editCategory
          ? _value.editCategory
          : editCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEditModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      CategoryModel? category,
      CategoryDeleteModel? delCategory,
      CategoryEditModel? editCategory});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? category = freezed,
    Object? delCategory = freezed,
    Object? editCategory = freezed,
  }) {
    return _then(_$CategoryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      delCategory: freezed == delCategory
          ? _value.delCategory
          : delCategory // ignore: cast_nullable_to_non_nullable
              as CategoryDeleteModel?,
      editCategory: freezed == editCategory
          ? _value.editCategory
          : editCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEditModel?,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required this.isLoading,
      this.category,
      this.delCategory,
      this.editCategory});

  @override
  final bool isLoading;
  @override
  final CategoryModel? category;
  @override
  final CategoryDeleteModel? delCategory;
  @override
  final CategoryEditModel? editCategory;

  @override
  String toString() {
    return 'CategoryState(isLoading: $isLoading, category: $category, delCategory: $delCategory, editCategory: $editCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.delCategory, delCategory) ||
                other.delCategory == delCategory) &&
            (identical(other.editCategory, editCategory) ||
                other.editCategory == editCategory));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, category, delCategory, editCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final bool isLoading,
      final CategoryModel? category,
      final CategoryDeleteModel? delCategory,
      final CategoryEditModel? editCategory}) = _$CategoryStateImpl;

  @override
  bool get isLoading;
  @override
  CategoryModel? get category;
  @override
  CategoryDeleteModel? get delCategory;
  @override
  CategoryEditModel? get editCategory;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
