part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    UserGetModel? users,
    UserBlockModel? blockUser,
  }) = _UserState;

  factory UserState.initial() {
    return const UserState(isLoading: false);
  }
}
