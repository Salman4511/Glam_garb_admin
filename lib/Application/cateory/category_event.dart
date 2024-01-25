part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent() = _CategoryEvent;

  factory CategoryEvent.addCategory(
      String name,
      dynamic active,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date) = _AddCategory;

  factory CategoryEvent.deleteCategory(String id) = _DeleteCategory;

  factory CategoryEvent.editCategory(
      String name,
      dynamic active,
      String id,
      int? categoryOffer,
      int? minAmount,
      int? maxDiscount,
      String? date) = _EditCategory;
}
