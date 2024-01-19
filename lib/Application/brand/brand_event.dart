part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent() = _BrandEvent;

  factory BrandEvent.addBrand(String brandName, String image, dynamic active )= _AddBrand;
}