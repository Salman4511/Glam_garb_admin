import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_delete_model/category_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_edit_model/category_edit_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo repo;
  CategoryBloc(this.repo) : super(CategoryState.initial()) {
    on<_AddCategory>((event, emit) async {
      final category = await repo.addCategory(
          event.name,
          event.active,
          event.categoryOffer ?? 0,
          event.minAmount ?? 0,
          event.maxDiscount ?? 0,
          event.date ?? '0');
      emit(state.copyWith(isLoading: false, category: category));
    });

    on<_DeleteCategory>((event, emit) async {
      final delCategory = await repo.deleteCategory(event.id);
      emit(state.copyWith(isLoading: false, delCategory: delCategory));
    });

    on<_EditCategory>((event, emit) async {
      final editCategory = await repo.editCategory(
          event.name,
          event.active,
          event.id,
          event.categoryOffer ?? 0,
          event.minAmount ?? 0,
          event.maxDiscount ?? 0,
          event.date ?? '0');
      emit(state.copyWith(isLoading: false, editCategory: editCategory));
    });
  }
}
