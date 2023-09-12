import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_request.freezed.dart';
part 'supplier_request.g.dart';

@freezed
class SupplierRequest with _$SupplierRequest {
  factory SupplierRequest({
    required String product,
  }) = _SupplierRequest;

  factory SupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$SupplierRequestFromJson(json);
}
