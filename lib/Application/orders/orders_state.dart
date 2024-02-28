part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    required bool isLoading,
    OrdersGetModel? orders,
    OrderEditModel? editOrder,
    ReturnAcceptRejectModel? acceptReturn,
    ReturnAcceptRejectModel? rejectReturn,
  }) = _OrdersState;

  factory OrdersState.initial() {
    return const OrdersState(isLoading: false);
  }
}
