part of 'brand_bloc.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState({
    required bool isloading,
    BrandModel? brand
  })=_BrandState;

   factory BrandState.initial(){
  return const BrandState(isloading: false);
  }
}
