part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent() = _UserEvent;

  factory UserEvent.getUsers() = _GetUsers;

  factory UserEvent.blockUsers(String id) = _BlockUsers;
}
