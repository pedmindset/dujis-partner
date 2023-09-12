
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_response.freezed.dart';
part 'orders_response.g.dart';

@freezed
class OrdersResponse with _$OrdersResponse {
  factory OrdersResponse() = _OrdersResponse;
	
  factory OrdersResponse.fromJson(Map<String, dynamic> json) =>
			_$OrdersResponseFromJson(json);
}
