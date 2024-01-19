part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent() = _CategoryEvent;

  factory CategoryEvent.addCategory(String name,dynamic active,) = _AddCategory;
}