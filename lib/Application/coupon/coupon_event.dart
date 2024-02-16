part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent() = _CouponEvent;

  factory CouponEvent.addCoupon(String couponCode, String couponDescr,
      int discount, int minAmount, int maxAmount, String expiry) = _AddCoupon;

  factory CouponEvent.editCoupon(
      String couponId,
      String couponCode,
      String couponDescr,
      int discount,
      int minAmount,
      int maxAmount,
      String expiry) = _EditCoupon;

  factory CouponEvent.deleteCoupon(String couponId) = _DeleteCoupon;
}
