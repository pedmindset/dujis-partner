part of 'shoppers_bloc.dart';

@freezed
class ShoppersState with _$ShoppersState {
  const ShoppersState._();

  const factory ShoppersState({
    required ShopperDataStatus assignStatus,
    required ShopperDataStatus packagedStatus,
    required ShopperDataStatus suppliersStatus,
    required List<SupplierEntity> suppliers,
    String? assignResponse,
    String? packagedResponse,
    String? supplierResponse,
  }) = _ShoppersState;

  factory ShoppersState.initial() {
    return const ShoppersState(
      assignStatus: ShopperDataStatus.assignInitial,
      packagedStatus: ShopperDataStatus.packedInitial,
      suppliersStatus: ShopperDataStatus.supplierInitial,
      suppliers: [],
      assignResponse: null,
      packagedResponse: null,
      supplierResponse: null,
    );
  }
}
