
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_response.freezed.dart';
part 'supplier_response.g.dart';

@freezed
class SupplierResponse with _$SupplierResponse {
  factory SupplierResponse() = _SupplierResponse;
	
  factory SupplierResponse.fromJson(Map<String, dynamic> json) =>
			_$SupplierResponseFromJson(json);
}
