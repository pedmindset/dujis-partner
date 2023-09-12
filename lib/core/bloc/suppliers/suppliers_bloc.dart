import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suppliers_event.dart';
part 'suppliers_state.dart';
part 'suppliers_bloc.freezed.dart';

class SuppliersBloc extends Bloc<SuppliersEvent, SuppliersState> {
  final SupplierRepo _supplierRepo;
  SuppliersBloc({required SupplierRepo supplierRepo})
      : _supplierRepo = supplierRepo,
        super(SuppliersState.initial()) {
    on<SDashboard>((event, emit) async {
      if (state.dashboardStatus.isDashboardLoading) return;
      emit(
          state.copyWith(dashboardStatus: SupplierDataStatus.dashboardLoading));

      try {
        final response = await _supplierRepo.dashboard();

        if (response.success) {
          emit(state.copyWith(
            dashboardStatus: SupplierDataStatus.dashboardSuccess,
            dashboardData: response.data,
            dashboardMessage: response.message,
          ));
        } else {
          emit(state.copyWith(
            dashboardStatus: SupplierDataStatus.dashboardError,
            dashboardMessage: response.message,
          ));
        }
      } catch (e) {
        emit(
          state.copyWith(
            dashboardStatus: SupplierDataStatus.dashboardError,
            dashboardMessage: e.toString(),
          ),
        );
      }
    });

    on<SOrders>((event, emit) async {
      if (state.ordersStatus.isOrdersLoading) return;
      emit(state.copyWith(ordersStatus: SupplierDataStatus.ordersLoading));

      try {
        final response = await _supplierRepo.getOrders();

        if (response.success) {
          emit(state.copyWith(
            ordersStatus: SupplierDataStatus.ordersSuccess,
            orders: response.data!,
            ordersMessage: response.message,
          ));
        } else {
          emit(state.copyWith(
            ordersStatus: SupplierDataStatus.ordersError,
            ordersMessage: response.message,
          ));
        }
      } catch (e) {
        emit(
          state.copyWith(
            dashboardStatus: SupplierDataStatus.dashboardError,
            dashboardMessage: e.toString(),
          ),
        );
      }
    });
    on<SLatestOrders>((event, emit) async {
      if (state.latestStatus.isLatestOrdersLoading) return;
      emit(
          state.copyWith(latestStatus: SupplierDataStatus.latestOrdersLoading));

      try {
        final response = await _supplierRepo.getLatestOrders();

        if (response.success) {
          emit(state.copyWith(
            latestStatus: SupplierDataStatus.latestOrdersSuccess,
            latestOrders: response.data!,
            latestOrdersMessage: response.message,
          ));
        } else {
          emit(state.copyWith(
            latestStatus: SupplierDataStatus.latestOrdersError,
            latestOrdersMessage: response.message,
          ));
        }
      } catch (e) {
        emit(
          state.copyWith(
            latestStatus: SupplierDataStatus.latestOrdersError,
            latestOrdersMessage: e.toString(),
          ),
        );
      }
    });
    on<SPastOrders>((event, emit) async {
      if (state.pastStatus.isPastOrdersLoading) return;
      emit(state.copyWith(pastStatus: SupplierDataStatus.pastOrdersLoading));

      try {
        final response = await _supplierRepo.getPastOrders();

        if (response.success) {
          emit(state.copyWith(
            pastStatus: SupplierDataStatus.pastOrdersSuccess,
            pastOrders: response.data!,
            pastOrdersMessage: response.message,
          ));
        } else {
          emit(state.copyWith(
            pastStatus: SupplierDataStatus.pastOrdersError,
            pastOrdersMessage: response.message,
          ));
        }
      } catch (e) {
        emit(
          state.copyWith(
            pastStatus: SupplierDataStatus.pastOrdersError,
            pastOrdersMessage: e.toString(),
          ),
        );
      }
    });
    on<SDashboardReset>((event, emit) async {
      emit(state.copyWith(
        dashboardData: null,
        dashboardMessage: null,
        dashboardStatus: SupplierDataStatus.dashboardInitial,
      ));
    });
    on<SOrdersReset>((event, emit) async {
      emit(state.copyWith(
        orders: [],
        ordersMessage: null,
        ordersStatus: SupplierDataStatus.ordersInitial,
      ));
    });
    on<SLatestOrdersReset>((event, emit) async {
      emit(state.copyWith(
        latestOrders: [],
        latestOrdersMessage: null,
        latestStatus: SupplierDataStatus.latestOrdersInitial,
      ));
    });
    on<SPastOrdersReset>((event, emit) async {
      emit(state.copyWith(
        pastOrders: [],
        pastOrdersMessage: null,
        pastStatus: SupplierDataStatus.pastOrdersInitial,
      ));
    });
  }
}
