import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_add_model/coupon_add_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_del_model/coupon_del_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_edit_model/coupon_edit_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/coupon/coupon_repo.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final CouponRepo repo;
  CouponBloc(this.repo) : super(CouponState.initial()) {
    on<_AddCoupon>((event, emit) async {
      final coupon = await repo.addCoupon(event.couponCode, event.couponDescr,
          event.discount, event.minAmount, event.maxAmount, event.expiry);
      emit(state.copyWith(isLoading: false, addCoupon: coupon));
    });

    on<_EditCoupon>((event, emit) async {
      final coupon = await repo.editCoupon(
          event.couponId,
          event.couponCode,
          event.couponDescr,
          event.discount,
          event.minAmount,
          event.maxAmount,
          event.expiry);
      emit(state.copyWith(isLoading: false, editCoupon: coupon));
    });

    on<_DeleteCoupon>((event, emit) async {
      final delCoupon = await repo.deleteCategory(event.couponId);
      emit(state.copyWith(isLoading: false, delCoupon: delCoupon));
    });
  }
}
