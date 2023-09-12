// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryAddressEntity _$DeliveryAddressEntityFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAddressEntity.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddressEntity {
  @JsonKey(name: 'delivery_address')
  int? get orderId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAddressEntityCopyWith<DeliveryAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressEntityCopyWith<$Res> {
  factory $DeliveryAddressEntityCopyWith(DeliveryAddressEntity value,
          $Res Function(DeliveryAddressEntity) then) =
      _$DeliveryAddressEntityCopyWithImpl<$Res, DeliveryAddressEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_address') int? orderId,
      int? id,
      String? name,
      String? address,
      String? phone,
      String? city,
      String? lat,
      String? long});
}

/// @nodoc
class _$DeliveryAddressEntityCopyWithImpl<$Res,
        $Val extends DeliveryAddressEntity>
    implements $DeliveryAddressEntityCopyWith<$Res> {
  _$DeliveryAddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryAddressEntityCopyWith<$Res>
    implements $DeliveryAddressEntityCopyWith<$Res> {
  factory _$$_DeliveryAddressEntityCopyWith(_$_DeliveryAddressEntity value,
          $Res Function(_$_DeliveryAddressEntity) then) =
      __$$_DeliveryAddressEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery_address') int? orderId,
      int? id,
      String? name,
      String? address,
      String? phone,
      String? city,
      String? lat,
      String? long});
}

/// @nodoc
class __$$_DeliveryAddressEntityCopyWithImpl<$Res>
    extends _$DeliveryAddressEntityCopyWithImpl<$Res, _$_DeliveryAddressEntity>
    implements _$$_DeliveryAddressEntityCopyWith<$Res> {
  __$$_DeliveryAddressEntityCopyWithImpl(_$_DeliveryAddressEntity _value,
      $Res Function(_$_DeliveryAddressEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? city = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_$_DeliveryAddressEntity(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryAddressEntity implements _DeliveryAddressEntity {
  _$_DeliveryAddressEntity(
      {@JsonKey(name: 'delivery_address') this.orderId,
      this.id,
      this.name,
      this.address,
      this.phone,
      this.city,
      this.lat,
      this.long});

  factory _$_DeliveryAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryAddressEntityFromJson(json);

  @override
  @JsonKey(name: 'delivery_address')
  final int? orderId;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? city;
  @override
  final String? lat;
  @override
  final String? long;

  @override
  String toString() {
    return 'DeliveryAddressEntity(orderId: $orderId, id: $id, name: $name, address: $address, phone: $phone, city: $city, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAddressEntity &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, id, name, address, phone, city, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryAddressEntityCopyWith<_$_DeliveryAddressEntity> get copyWith =>
      __$$_DeliveryAddressEntityCopyWithImpl<_$_DeliveryAddressEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryAddressEntityToJson(
      this,
    );
  }
}

abstract class _DeliveryAddressEntity implements DeliveryAddressEntity {
  factory _DeliveryAddressEntity(
      {@JsonKey(name: 'delivery_address') final int? orderId,
      final int? id,
      final String? name,
      final String? address,
      final String? phone,
      final String? city,
      final String? lat,
      final String? long}) = _$_DeliveryAddressEntity;

  factory _DeliveryAddressEntity.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAddressEntity.fromJson;

  @override
  @JsonKey(name: 'delivery_address')
  int? get orderId;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get city;
  @override
  String? get lat;
  @override
  String? get long;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAddressEntityCopyWith<_$_DeliveryAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
