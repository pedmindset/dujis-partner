
import 'package:freezed_annotation/freezed_annotation.dart';

part 'past_orders_response.freezed.dart';
part 'past_orders_response.g.dart';

@freezed
class PastOrdersResponse with _$PastOrdersResponse {
  factory PastOrdersResponse() = _PastOrdersResponse;
	
  factory PastOrdersResponse.fromJson(Map<String, dynamic> json) =>
			_$PastOrdersResponseFromJson(json);
}
