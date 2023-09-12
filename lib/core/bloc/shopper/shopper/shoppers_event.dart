part of 'shoppers_bloc.dart';

@freezed
class ShoppersEvent with _$ShoppersEvent {
  const factory ShoppersEvent.getSuppliers(SupplierRequest request) =
      GetSuppliers;
  const factory ShoppersEvent.assign(AssignedRequest request) = AssignSupplier;
  const factory ShoppersEvent.package(PackagedRequest request) = Packaged;
  const factory ShoppersEvent.assignReset() = AssignReset;
  const factory ShoppersEvent.packageReset() = PackagedReset;
}
