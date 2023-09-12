
import 'package:freezed_annotation/freezed_annotation.dart';

part 'packaged_response.freezed.dart';
part 'packaged_response.g.dart';

@freezed
class PackagedResponse with _$PackagedResponse {
  factory PackagedResponse() = _PackagedResponse;
	
  factory PackagedResponse.fromJson(Map<String, dynamic> json) =>
			_$PackagedResponseFromJson(json);
}
