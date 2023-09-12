import 'package:bloc/bloc.dart';
import 'package:dujis_partner/core/models/models.dart';
import 'package:dujis_partner/core/repository/repos.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoppers_event.dart';
part 'shoppers_state.dart';
part 'shoppers_bloc.freezed.dart';

class ShoppersBloc extends Bloc<ShoppersEvent, ShoppersState> {
  final OrderRepo _orderRepo;

  ShoppersBloc({required OrderRepo orderRepo})
      : _orderRepo = orderRepo,
        super(ShoppersState.initial()) {
    // get suppliers
    on<GetSuppliers>((event, emit) async {
      if (state.suppliersStatus.isSupplierLoading) return;
      emit(state.copyWith(suppliersStatus: ShopperDataStatus.supplierLoading));

      try {
        final response = await _orderRepo.getSuppliers(event.request);

        if (response.success) {
          emit(state.copyWith(
            suppliersStatus: ShopperDataStatus.supplierSuccess,
            suppliers: response.data!,
            supplierResponse: response.message,
          ));
        } else {
          emit(state.copyWith(
            suppliersStatus: ShopperDataStatus.supplierError,
            supplierResponse: response.message,
          ));
        }
      } catch (e) {
        emit(
          state.copyWith(
            suppliersStatus: ShopperDataStatus.supplierError,
            supplierResponse: e.toString(),
          ),
        );
      }
    });
    // assign supplier
    on<AssignSupplier>((event, emit) async {
      if (state.assignStatus.isAssignLoading) return;
      emit(state.copyWith(assignStatus: ShopperDataStatus.assignLoading));
      try {
        final response = await _orderRepo.assignProduct(event.request);

        if (response.success) {
          emit(state.copyWith(
              assignStatus: ShopperDataStatus.assignSuccess,
              assignResponse: response.message));
        } else {
          emit(state.copyWith(
              assignStatus: ShopperDataStatus.assignError,
              assignResponse: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            assignStatus: ShopperDataStatus.assignError,
            assignResponse: e.toString()));
      }
    });

    on<Packaged>((event, emit) async {
      if (state.packagedStatus.isPackedLoading) return;
      emit(state.copyWith(packagedStatus: ShopperDataStatus.packedLoading));
      try {
        final response = await _orderRepo.packedOrder(event.request);

        if (response.success) {
          emit(state.copyWith(
              packagedStatus: ShopperDataStatus.packedSuccess,
              packagedResponse: response.message));
        } else {
          emit(state.copyWith(
              packagedStatus: ShopperDataStatus.packedError,
              packagedResponse: response.message));
        }
      } catch (e) {
        emit(state.copyWith(
            packagedStatus: ShopperDataStatus.packedError,
            packagedResponse: e.toString()));
      }
    });

    on<AssignReset>((event, emit) {
      emit(state.copyWith(assignStatus: ShopperDataStatus.assignInitial));
    });

    on<PackagedReset>((event, emit) {
      emit(state.copyWith(packagedStatus: ShopperDataStatus.packedInitial));
    });
  }
}
