import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_add_model/banner_add_model.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_delete_model/banner_delete_model.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_edit_model/banner_edit_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/banner/banner_repo.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRepo repo;
  BannerBloc(this.repo) : super(BannerState.initial()) {
    on<_AddBanner>((event, emit) async {
      final banner = await repo.addBanner(event.description, event.h1, event.h2,
          event.h3, event.p1, event.status, event.image);
      emit(state.copyWith(isLoading: false, addBanner: banner));
    });

    on<_EditBanner>((event, emit) async {
      final editBanner = await repo.editBanner(event.id, event.description,
          event.h1, event.h2, event.h3, event.p1, event.status, event.image);
      emit(state.copyWith(isLoading: false, editBanner: editBanner));
    });

    on<_DeleteBanner>((event, emit) async {
      final delBanner = await repo.deleteBanner(event.bannerId);
      emit(state.copyWith(isLoading: false, delBanner: delBanner));
    });
  }
}
