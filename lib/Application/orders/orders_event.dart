part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent() = _OrdersEvent;

  factory OrdersEvent.orders() = _Orders;

  factory OrdersEvent.editOrders(String id, String status) = _EditOrders;

  factory OrdersEvent.acceptReturn(
    String id,
  ) = _AcceptReturn;

  factory OrdersEvent.rejectReturn(
    String id,
  ) = _RejectReturn;
}
