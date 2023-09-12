import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'past_orders_event.dart';
part 'past_orders_state.dart';
part 'past_orders_bloc.freezed.dart';

class PastOrdersBloc extends Bloc<PastOrdersEvent, PastOrdersState> {
  final OrderRepo _orderRepo;

  PastOrdersBloc({required OrderRepo orderRepo})
      : _orderRepo = orderRepo,
        super(PastOrdersState.initial()) {
    on<ShopperPastGetOrders>((event, emit) async {
      if (state.status.isPastOrderLoading) return;
      emit(state.copyWith(status: ShopperDataStatus.pastOrderLoading));
      try {
        final response = await _orderRepo.getPastOrders();

        if (response.success) {
          emit(state.copyWith(
              status: ShopperDataStatus.pastOrderSuccess,
              orders: response.data!,
              message: response.message));
        } else {
          emit(state.copyWith(
              status: ShopperDataStatus.pastOrderError,
              message: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            status: ShopperDataStatus.pastOrderError, message: e.toString()));
      }
    });

    on<ShpperPastOrderReset>((event, emit) {
      emit(state.copyWith(status: ShopperDataStatus.pastOrderInitial));
    });
  }
}
