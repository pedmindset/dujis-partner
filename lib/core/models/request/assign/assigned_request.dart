import 'package:freezed_annotation/freezed_annotation.dart';

part 'assigned_request.freezed.dart';
part 'assigned_request.g.dart';

@freezed
class AssignedRequest with _$AssignedRequest {
  factory AssignedRequest({
    required String order,
    required String product,
    required String supplier,
  }) = _AssignedRequest;

  factory AssignedRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignedRequestFromJson(json);
}
