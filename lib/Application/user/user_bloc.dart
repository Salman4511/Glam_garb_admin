import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/users_model/user_block_model/user_block_model.dart';
import 'package:glam_garb_admin/Domain/response_models/users_model/user_get_model/user_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/users/users_repo.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo repo;
  UserBloc(this.repo) : super(UserState.initial()) {
    on<_GetUsers>((event, emit) async {
      final user = await repo.getUser();
      emit(state.copyWith(isLoading: false, users: user));
    });

    on<_BlockUsers>((event, emit) async {
      final blockUser = await repo.blockUser(event.id);
      emit(state.copyWith(isLoading: false, blockUser: blockUser));
    });
  }
}
