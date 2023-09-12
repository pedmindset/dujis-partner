import 'package:freezed_annotation/freezed_annotation.dart';

part 'packaged_request.freezed.dart';
part 'packaged_request.g.dart';

@freezed
class PackagedRequest with _$PackagedRequest {
  factory PackagedRequest({
    required String order,
  }) = _PackagedRequest;

  factory PackagedRequest.fromJson(Map<String, dynamic> json) =>
      _$PackagedRequestFromJson(json);
}
