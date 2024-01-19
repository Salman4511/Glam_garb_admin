import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Brand/brand_repo.dart';

part 'brand_event.dart';
part 'brand_state.dart';
part 'brand_bloc.freezed.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final BrandRepo repo;
  BrandBloc(this.repo) : super(BrandState.initial()) {
   
    on<_AddBrand>((event, emit) async {
      final brand = await repo.addBrand(event.brandName, event.active, event.image);
      emit(state.copyWith(isloading: false, brand: brand));
    });


  }
}
