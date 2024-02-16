part of 'banner_bloc.dart';

@freezed
class BannerEvent with _$BannerEvent {
   const factory BannerEvent() = _BannerEvent;

  factory BannerEvent.addBanner(String description, String h1, String h2,
      String h3, String p1, String status, dynamic image) = _AddBanner;
}