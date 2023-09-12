// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketEntity _$MarketEntityFromJson(Map<String, dynamic> json) {
  return _MarketEntity.fromJson(json);
}

/// @nodoc
mixin _$MarketEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketEntityCopyWith<MarketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketEntityCopyWith<$Res> {
  factory $MarketEntityCopyWith(
          MarketEntity value, $Res Function(MarketEntity) then) =
      _$MarketEntityCopyWithImpl<$Res, MarketEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? latitude,
      String? longitude,
      String? address,
      String? description,
      String? city,
      String? region});
}

/// @nodoc
class _$MarketEntityCopyWithImpl<$Res, $Val extends MarketEntity>
    implements $MarketEntityCopyWith<$Res> {
  _$MarketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketEntityCopyWith<$Res>
    implements $MarketEntityCopyWith<$Res> {
  factory _$$_MarketEntityCopyWith(
          _$_MarketEntity value, $Res Function(_$_MarketEntity) then) =
      __$$_MarketEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? latitude,
      String? longitude,
      String? address,
      String? description,
      String? city,
      String? region});
}

/// @nodoc
class __$$_MarketEntityCopyWithImpl<$Res>
    extends _$MarketEntityCopyWithImpl<$Res, _$_MarketEntity>
    implements _$$_MarketEntityCopyWith<$Res> {
  __$$_MarketEntityCopyWithImpl(
      _$_MarketEntity _value, $Res Function(_$_MarketEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? city = freezed,
    Object? region = freezed,
  }) {
    return _then(_$_MarketEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketEntity implements _MarketEntity {
  _$_MarketEntity(
      {this.id,
      this.name,
      this.latitude,
      this.longitude,
      this.address,
      this.description,
      this.city,
      this.region});

  factory _$_MarketEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MarketEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? city;
  @override
  final String? region;

  @override
  String toString() {
    return 'MarketEntity(id: $id, name: $name, latitude: $latitude, longitude: $longitude, address: $address, description: $description, city: $city, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, latitude, longitude,
      address, description, city, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketEntityCopyWith<_$_MarketEntity> get copyWith =>
      __$$_MarketEntityCopyWithImpl<_$_MarketEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketEntityToJson(
      this,
    );
  }
}

abstract class _MarketEntity implements MarketEntity {
  factory _MarketEntity(
      {final int? id,
      final String? name,
      final String? latitude,
      final String? longitude,
      final String? address,
      final String? description,
      final String? city,
      final String? region}) = _$_MarketEntity;

  factory _MarketEntity.fromJson(Map<String, dynamic> json) =
      _$_MarketEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get city;
  @override
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$$_MarketEntityCopyWith<_$_MarketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
