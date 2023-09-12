import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrderRepo _orderRepo;

  OrdersBloc({required OrderRepo orderRepo})
      : _orderRepo = orderRepo,
        super(OrdersState.initial()) {
    on<ShopperGetOrders>((event, emit) async {
      if (state.status.isOrderLoading) return;
      emit(state.copyWith(status: ShopperDataStatus.orderLoading));
      try {
        final response = await _orderRepo.getOrders();

        if (response.success) {
          emit(state.copyWith(
              status: ShopperDataStatus.orderSuccess,
              orders: response.data!,
              message: response.message));
        } else {
          emit(state.copyWith(
              status: ShopperDataStatus.orderError, message: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            status: ShopperDataStatus.orderError, message: e.toString()));
      }
    });

    on<ShpperOrderReset>((event, emit) {
      emit(state.copyWith(status: ShopperDataStatus.orderInitial));
    });
  }
}
