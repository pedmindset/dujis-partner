
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assigned_response.freezed.dart';
part 'assigned_response.g.dart';

@freezed
class AssignedResponse with _$AssignedResponse {
  factory AssignedResponse() = _AssignedResponse;
	
  factory AssignedResponse.fromJson(Map<String, dynamic> json) =>
			_$AssignedResponseFromJson(json);
}
