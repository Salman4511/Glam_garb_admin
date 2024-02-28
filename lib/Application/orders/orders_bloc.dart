import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/order_edit_model/order_edit_model.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/orders_get_model/orders_get_model.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/return_accept_reject_model/return_accept_reject_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/orders/orders_repo.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersRepo repo;
  OrdersBloc(this.repo) : super(OrdersState.initial()) {
    on<_Orders>((event, emit) async {
      final orders = await repo.getOrders();
      emit(state.copyWith(isLoading: false, orders: orders));
    });

    on<_EditOrders>((event, emit) async {
      final editOrders = await repo.editOrders(event.id, event.status);
      emit(state.copyWith(isLoading: false, editOrder: editOrders));
    });

    on<_AcceptReturn>((event, emit) async {
      final accept = await repo.returnAccept(event.id);
      emit(state.copyWith(isLoading: false, acceptReturn: accept));
    });

    on<_RejectReturn>((event, emit) async {
      final reject = await repo.returnReject(event.id);
      emit(state.copyWith(isLoading: false, rejectReturn: reject));
    });
  }
}
