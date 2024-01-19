part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent() = _AuthEvent;

  factory AuthEvent.signIn(String email, String password) = _SignIn;

  factory AuthEvent.logOut() = _LogOut;
}
