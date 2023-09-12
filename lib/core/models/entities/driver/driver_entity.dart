
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_entity.freezed.dart';
part 'driver_entity.g.dart';

@freezed
class DriverEntity with _$DriverEntity {
  factory DriverEntity() = _DriverEntity;
	
  factory DriverEntity.fromJson(Map<String, dynamic> json) =>
			_$DriverEntityFromJson(json);
}
