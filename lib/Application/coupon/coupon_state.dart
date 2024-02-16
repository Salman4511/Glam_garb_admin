part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({
    required bool isLoading,
    CouponAddModel? addCoupon,
    CouponEditModel? editCoupon,
    CouponDelModel? delCoupon,
  }) = _CouponState;

  factory CouponState.initial() {
    return const CouponState(isLoading: false);
  }
}
