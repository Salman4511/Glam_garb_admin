part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState({
    required bool isLoading,
    BannerAddModel? addBanner,
  }) = _BannerState;

  factory BannerState.initial() {
    return const BannerState(isLoading: false);
  }
}
