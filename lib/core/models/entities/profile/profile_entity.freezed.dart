// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb_image_url')
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res, ProfileEntity>;
  @useResult
  $Res call(
      {int? id,
      String? phone,
      @JsonKey(name: 'thumb_image_url') String? profileImage});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res, $Val extends ProfileEntity>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$_ProfileEntityCopyWith(
          _$_ProfileEntity value, $Res Function(_$_ProfileEntity) then) =
      __$$_ProfileEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? phone,
      @JsonKey(name: 'thumb_image_url') String? profileImage});
}

/// @nodoc
class __$$_ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$_ProfileEntity>
    implements _$$_ProfileEntityCopyWith<$Res> {
  __$$_ProfileEntityCopyWithImpl(
      _$_ProfileEntity _value, $Res Function(_$_ProfileEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$_ProfileEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileEntity implements _ProfileEntity {
  _$_ProfileEntity(
      {this.id,
      this.phone,
      @JsonKey(name: 'thumb_image_url') this.profileImage});

  factory _$_ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'thumb_image_url')
  final String? profileImage;

  @override
  String toString() {
    return 'ProfileEntity(id: $id, phone: $phone, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, phone, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      __$$_ProfileEntityCopyWithImpl<_$_ProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEntityToJson(
      this,
    );
  }
}

abstract class _ProfileEntity implements ProfileEntity {
  factory _ProfileEntity(
          {final int? id,
          final String? phone,
          @JsonKey(name: 'thumb_image_url') final String? profileImage}) =
      _$_ProfileEntity;

  factory _ProfileEntity.fromJson(Map<String, dynamic> json) =
      _$_ProfileEntity.fromJson;

  @override
  int? get id;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'thumb_image_url')
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
