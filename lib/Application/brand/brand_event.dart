part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent() = _BrandEvent;

  factory BrandEvent.addBrand(String brandName, dynamic active, dynamic image) =
      _AddBrand;

  factory BrandEvent.deleteBrand(String id) = _DeleteBrand;

  factory BrandEvent.editBrand(String brandName, dynamic active, dynamic image,
      String id, String oldName) = _EditBrand;
}
