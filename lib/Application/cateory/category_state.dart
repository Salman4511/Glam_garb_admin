part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
   const factory CategoryState({
   required bool isLoading,
   CategoryModel? category
   })=_CategoryState;

   factory CategoryState.initial() {
    return const CategoryState(
     isLoading: false
    );
  }
}
