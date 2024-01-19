part of 'auth_bloc.dart';

@freezed
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    AdminLogin? adminlogin,
    LogoutModel? logout,
  }) = _AuthState;

  factory AuthState.inital() {
    return const AuthState(
      isLoading: false,
    );
  }
}
