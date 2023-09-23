import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/data_status/shopper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrderRepo _orderRepo;

  OrdersBloc({required OrderRepo orderRepo})
      : _orderRepo = orderRepo,
        super(OrdersState.initial()) {
    on<NewReset>((event, emit) async {
      emit(state.copyWith(
        newOrdersStatus: ShNewOrdersStatus.initial,
        newOrders: [],
        message: null,
      ));
    });

    on<PastReset>((event, emit) async {
      emit(state.copyWith(
        pastOrdersStatus: ShPastOrdersStatus.initial,
        pastOrders: [],
        message: null,
      ));
    });

    on<ShopperGetNewOrders>((event, emit) async {
      if (state.newOrdersStatus.isLoading) return;
      emit(state.copyWith(newOrdersStatus: ShNewOrdersStatus.loading));
      try {
        final response = await _orderRepo.getOrders();

        // await Future.delayed(const Duration(seconds: 3), () {
        //   print('One second has passed.'); // Prints after 1 second.
        //   emit(
        //     state.copyWith(
        //         status: ShopperDataStatus.orderSuccess,
        //         orders: shopperOrders,
        //         message: "Nice gotcha"),
        //   );
        // });

        if (response.success) {
          emit(
            state.copyWith(
              newOrdersStatus: ShNewOrdersStatus.success,
              newOrders: response.data!,
              message: response.message,
            ),
          );
        } else {
          emit(
            state.copyWith(
              newOrdersStatus: ShNewOrdersStatus.error,
              message: response.message,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            newOrdersStatus: ShNewOrdersStatus.networkError,
            message: e.toString(),
          ),
        );
      }
    });

    on<ShopperGetPastOrders>((event, emit) async {
      emit(state.copyWith(pastOrdersStatus: ShPastOrdersStatus.loading));
      try {
        final response = await _orderRepo.getPastOrders();

        if (response.success) {
          log(response.data.toString());
          emit(
            state.copyWith(
              pastOrdersStatus: ShPastOrdersStatus.success,
              pastOrders: response.data!,
              message: response.message,
            ),
          );
        } else {
          emit(
            state.copyWith(
              pastOrdersStatus: ShPastOrdersStatus.error,
              message: response.message,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            pastOrdersStatus: ShPastOrdersStatus.networkError,
            message: e.toString(),
          ),
        );
      }
    });

    // on<ShopperGetOrders>((event, emit) async {
    //   if (state.status.isOrderLoading) return;
    //   emit(state.copyWith(status: ShopperDataStatus.orderLoading));
    //   try {
    //     // final response = await _orderRepo.getOrders();

    //     await Future.delayed(const Duration(seconds: 3), () {
    //       print('One second has passed.'); // Prints after 1 second.
    //       emit(
    //         state.copyWith(
    //             status: ShopperDataStatus.orderSuccess,
    //             orders: shopperOrders,
    //             message: "Nice gotcha"),
    //       );
    //     });

    //     // if (response.success) {
    //     //   emit(state.copyWith(
    //     //       status: ShopperDataStatus.orderSuccess,
    //     //       orders: response.data!,
    //     //       message: response.message));
    //     // } else {
    //     //   emit(state.copyWith(
    //     //       status: ShopperDataStatus.orderError, message: response.message));
    //     // }
    //   } catch (e) {
    //     emit(state.copyWith(
    //         status: ShopperDataStatus.orderError, message: e.toString()));
    //   }
    // });

    // on<ShpperOrderReset>((event, emit) {
    //   emit(state.copyWith(status: ShopperDataStatus.orderInitial));
    // });
  }
}
