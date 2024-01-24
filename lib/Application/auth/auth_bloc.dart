import 'package:bloc/bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/login_model/admin_login/admin_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/logout_model/admin_logout.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';
part 'auth_bloc.freezed.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo repo;
  AuthBloc(this.repo) : super(AuthState.inital()) {
    on<_SignIn>((event, emit) async {
      final adminlogin = await repo.singIn(event.email, event.password);
      emit(state.copyWith(adminlogin: adminlogin, isLoading: false));
    });

    on<_LogOut>((event, emit) async {
      final logOut = await repo.logOut();
      emit(state.copyWith(logout: logOut));
    });
  }
}
