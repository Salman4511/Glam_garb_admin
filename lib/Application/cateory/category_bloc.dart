import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/body_models/category_pass_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Category/category_repo.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo repo;
  CategoryBloc(this.repo) : super(CategoryState.initial()) {
   
    on<_AddCategory>((event, emit) async {
      final category = await repo.addCategory(event.name,event.active);
      emit(state.copyWith( isLoading: false,category: category));
    });

  }
}
