// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getPastOrders,
    required TResult Function() currentOrderReset,
    required TResult Function() pastOrderReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getPastOrders,
    TResult? Function()? currentOrderReset,
    TResult? Function()? pastOrderReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getPastOrders,
    TResult Function()? currentOrderReset,
    TResult Function()? pastOrderReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetNewOrders value) getOrders,
    required TResult Function(ShopperGetPastOrders value) getPastOrders,
    required TResult Function(NewReset value) currentOrderReset,
    required TResult Function(PastReset value) pastOrderReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetNewOrders value)? getOrders,
    TResult? Function(ShopperGetPastOrders value)? getPastOrders,
    TResult? Function(NewReset value)? currentOrderReset,
    TResult? Function(PastReset value)? pastOrderReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetNewOrders value)? getOrders,
    TResult Function(ShopperGetPastOrders value)? getPastOrders,
    TResult Function(NewReset value)? currentOrderReset,
    TResult Function(PastReset value)? pastOrderReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShopperGetNewOrdersCopyWith<$Res> {
  factory _$$ShopperGetNewOrdersCopyWith(_$ShopperGetNewOrders value,
          $Res Function(_$ShopperGetNewOrders) then) =
      __$$ShopperGetNewOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopperGetNewOrdersCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ShopperGetNewOrders>
    implements _$$ShopperGetNewOrdersCopyWith<$Res> {
  __$$ShopperGetNewOrdersCopyWithImpl(
      _$ShopperGetNewOrders _value, $Res Function(_$ShopperGetNewOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopperGetNewOrders implements ShopperGetNewOrders {
  const _$ShopperGetNewOrders();

  @override
  String toString() {
    return 'OrdersEvent.getOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopperGetNewOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getPastOrders,
    required TResult Function() currentOrderReset,
    required TResult Function() pastOrderReset,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getPastOrders,
    TResult? Function()? currentOrderReset,
    TResult? Function()? pastOrderReset,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getPastOrders,
    TResult Function()? currentOrderReset,
    TResult Function()? pastOrderReset,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetNewOrders value) getOrders,
    required TResult Function(ShopperGetPastOrders value) getPastOrders,
    required TResult Function(NewReset value) currentOrderReset,
    required TResult Function(PastReset value) pastOrderReset,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetNewOrders value)? getOrders,
    TResult? Function(ShopperGetPastOrders value)? getPastOrders,
    TResult? Function(NewReset value)? currentOrderReset,
    TResult? Function(PastReset value)? pastOrderReset,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetNewOrders value)? getOrders,
    TResult Function(ShopperGetPastOrders value)? getPastOrders,
    TResult Function(NewReset value)? currentOrderReset,
    TResult Function(PastReset value)? pastOrderReset,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class ShopperGetNewOrders implements OrdersEvent {
  const factory ShopperGetNewOrders() = _$ShopperGetNewOrders;
}

/// @nodoc
abstract class _$$ShopperGetPastOrdersCopyWith<$Res> {
  factory _$$ShopperGetPastOrdersCopyWith(_$ShopperGetPastOrders value,
          $Res Function(_$ShopperGetPastOrders) then) =
      __$$ShopperGetPastOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShopperGetPastOrdersCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ShopperGetPastOrders>
    implements _$$ShopperGetPastOrdersCopyWith<$Res> {
  __$$ShopperGetPastOrdersCopyWithImpl(_$ShopperGetPastOrders _value,
      $Res Function(_$ShopperGetPastOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShopperGetPastOrders implements ShopperGetPastOrders {
  const _$ShopperGetPastOrders();

  @override
  String toString() {
    return 'OrdersEvent.getPastOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShopperGetPastOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getPastOrders,
    required TResult Function() currentOrderReset,
    required TResult Function() pastOrderReset,
  }) {
    return getPastOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getPastOrders,
    TResult? Function()? currentOrderReset,
    TResult? Function()? pastOrderReset,
  }) {
    return getPastOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getPastOrders,
    TResult Function()? currentOrderReset,
    TResult Function()? pastOrderReset,
    required TResult orElse(),
  }) {
    if (getPastOrders != null) {
      return getPastOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetNewOrders value) getOrders,
    required TResult Function(ShopperGetPastOrders value) getPastOrders,
    required TResult Function(NewReset value) currentOrderReset,
    required TResult Function(PastReset value) pastOrderReset,
  }) {
    return getPastOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetNewOrders value)? getOrders,
    TResult? Function(ShopperGetPastOrders value)? getPastOrders,
    TResult? Function(NewReset value)? currentOrderReset,
    TResult? Function(PastReset value)? pastOrderReset,
  }) {
    return getPastOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetNewOrders value)? getOrders,
    TResult Function(ShopperGetPastOrders value)? getPastOrders,
    TResult Function(NewReset value)? currentOrderReset,
    TResult Function(PastReset value)? pastOrderReset,
    required TResult orElse(),
  }) {
    if (getPastOrders != null) {
      return getPastOrders(this);
    }
    return orElse();
  }
}

abstract class ShopperGetPastOrders implements OrdersEvent {
  const factory ShopperGetPastOrders() = _$ShopperGetPastOrders;
}

/// @nodoc
abstract class _$$NewResetCopyWith<$Res> {
  factory _$$NewResetCopyWith(
          _$NewReset value, $Res Function(_$NewReset) then) =
      __$$NewResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewResetCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$NewReset>
    implements _$$NewResetCopyWith<$Res> {
  __$$NewResetCopyWithImpl(_$NewReset _value, $Res Function(_$NewReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewReset implements NewReset {
  const _$NewReset();

  @override
  String toString() {
    return 'OrdersEvent.currentOrderReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getPastOrders,
    required TResult Function() currentOrderReset,
    required TResult Function() pastOrderReset,
  }) {
    return currentOrderReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getPastOrders,
    TResult? Function()? currentOrderReset,
    TResult? Function()? pastOrderReset,
  }) {
    return currentOrderReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getPastOrders,
    TResult Function()? currentOrderReset,
    TResult Function()? pastOrderReset,
    required TResult orElse(),
  }) {
    if (currentOrderReset != null) {
      return currentOrderReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetNewOrders value) getOrders,
    required TResult Function(ShopperGetPastOrders value) getPastOrders,
    required TResult Function(NewReset value) currentOrderReset,
    required TResult Function(PastReset value) pastOrderReset,
  }) {
    return currentOrderReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetNewOrders value)? getOrders,
    TResult? Function(ShopperGetPastOrders value)? getPastOrders,
    TResult? Function(NewReset value)? currentOrderReset,
    TResult? Function(PastReset value)? pastOrderReset,
  }) {
    return currentOrderReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetNewOrders value)? getOrders,
    TResult Function(ShopperGetPastOrders value)? getPastOrders,
    TResult Function(NewReset value)? currentOrderReset,
    TResult Function(PastReset value)? pastOrderReset,
    required TResult orElse(),
  }) {
    if (currentOrderReset != null) {
      return currentOrderReset(this);
    }
    return orElse();
  }
}

abstract class NewReset implements OrdersEvent {
  const factory NewReset() = _$NewReset;
}

/// @nodoc
abstract class _$$PastResetCopyWith<$Res> {
  factory _$$PastResetCopyWith(
          _$PastReset value, $Res Function(_$PastReset) then) =
      __$$PastResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PastResetCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$PastReset>
    implements _$$PastResetCopyWith<$Res> {
  __$$PastResetCopyWithImpl(
      _$PastReset _value, $Res Function(_$PastReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PastReset implements PastReset {
  const _$PastReset();

  @override
  String toString() {
    return 'OrdersEvent.pastOrderReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PastReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getPastOrders,
    required TResult Function() currentOrderReset,
    required TResult Function() pastOrderReset,
  }) {
    return pastOrderReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getPastOrders,
    TResult? Function()? currentOrderReset,
    TResult? Function()? pastOrderReset,
  }) {
    return pastOrderReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getPastOrders,
    TResult Function()? currentOrderReset,
    TResult Function()? pastOrderReset,
    required TResult orElse(),
  }) {
    if (pastOrderReset != null) {
      return pastOrderReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShopperGetNewOrders value) getOrders,
    required TResult Function(ShopperGetPastOrders value) getPastOrders,
    required TResult Function(NewReset value) currentOrderReset,
    required TResult Function(PastReset value) pastOrderReset,
  }) {
    return pastOrderReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShopperGetNewOrders value)? getOrders,
    TResult? Function(ShopperGetPastOrders value)? getPastOrders,
    TResult? Function(NewReset value)? currentOrderReset,
    TResult? Function(PastReset value)? pastOrderReset,
  }) {
    return pastOrderReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShopperGetNewOrders value)? getOrders,
    TResult Function(ShopperGetPastOrders value)? getPastOrders,
    TResult Function(NewReset value)? currentOrderReset,
    TResult Function(PastReset value)? pastOrderReset,
    required TResult orElse(),
  }) {
    if (pastOrderReset != null) {
      return pastOrderReset(this);
    }
    return orElse();
  }
}

abstract class PastReset implements OrdersEvent {
  const factory PastReset() = _$PastReset;
}

/// @nodoc
mixin _$OrdersState {
  ShNewOrdersStatus get newOrdersStatus => throw _privateConstructorUsedError;
  ShPastOrdersStatus get pastOrdersStatus => throw _privateConstructorUsedError;
  List<OrderEntity> get newOrders => throw _privateConstructorUsedError;
  List<OrderEntity> get pastOrders => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {ShNewOrdersStatus newOrdersStatus,
      ShPastOrdersStatus pastOrdersStatus,
      List<OrderEntity> newOrders,
      List<OrderEntity> pastOrders,
      String? message});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newOrdersStatus = null,
    Object? pastOrdersStatus = null,
    Object? newOrders = null,
    Object? pastOrders = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      newOrdersStatus: null == newOrdersStatus
          ? _value.newOrdersStatus
          : newOrdersStatus // ignore: cast_nullable_to_non_nullable
              as ShNewOrdersStatus,
      pastOrdersStatus: null == pastOrdersStatus
          ? _value.pastOrdersStatus
          : pastOrdersStatus // ignore: cast_nullable_to_non_nullable
              as ShPastOrdersStatus,
      newOrders: null == newOrders
          ? _value.newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      pastOrders: null == pastOrders
          ? _value.pastOrders
          : pastOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShNewOrdersStatus newOrdersStatus,
      ShPastOrdersStatus pastOrdersStatus,
      List<OrderEntity> newOrders,
      List<OrderEntity> pastOrders,
      String? message});
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_OrdersState>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newOrdersStatus = null,
    Object? pastOrdersStatus = null,
    Object? newOrders = null,
    Object? pastOrders = null,
    Object? message = freezed,
  }) {
    return _then(_$_OrdersState(
      newOrdersStatus: null == newOrdersStatus
          ? _value.newOrdersStatus
          : newOrdersStatus // ignore: cast_nullable_to_non_nullable
              as ShNewOrdersStatus,
      pastOrdersStatus: null == pastOrdersStatus
          ? _value.pastOrdersStatus
          : pastOrdersStatus // ignore: cast_nullable_to_non_nullable
              as ShPastOrdersStatus,
      newOrders: null == newOrders
          ? _value._newOrders
          : newOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      pastOrders: null == pastOrders
          ? _value._pastOrders
          : pastOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OrdersState extends _OrdersState {
  const _$_OrdersState(
      {required this.newOrdersStatus,
      required this.pastOrdersStatus,
      required final List<OrderEntity> newOrders,
      required final List<OrderEntity> pastOrders,
      this.message})
      : _newOrders = newOrders,
        _pastOrders = pastOrders,
        super._();

  @override
  final ShNewOrdersStatus newOrdersStatus;
  @override
  final ShPastOrdersStatus pastOrdersStatus;
  final List<OrderEntity> _newOrders;
  @override
  List<OrderEntity> get newOrders {
    if (_newOrders is EqualUnmodifiableListView) return _newOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newOrders);
  }

  final List<OrderEntity> _pastOrders;
  @override
  List<OrderEntity> get pastOrders {
    if (_pastOrders is EqualUnmodifiableListView) return _pastOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastOrders);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'OrdersState(newOrdersStatus: $newOrdersStatus, pastOrdersStatus: $pastOrdersStatus, newOrders: $newOrders, pastOrders: $pastOrders, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            (identical(other.newOrdersStatus, newOrdersStatus) ||
                other.newOrdersStatus == newOrdersStatus) &&
            (identical(other.pastOrdersStatus, pastOrdersStatus) ||
                other.pastOrdersStatus == pastOrdersStatus) &&
            const DeepCollectionEquality()
                .equals(other._newOrders, _newOrders) &&
            const DeepCollectionEquality()
                .equals(other._pastOrders, _pastOrders) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      newOrdersStatus,
      pastOrdersStatus,
      const DeepCollectionEquality().hash(_newOrders),
      const DeepCollectionEquality().hash(_pastOrders),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);
}

abstract class _OrdersState extends OrdersState {
  const factory _OrdersState(
      {required final ShNewOrdersStatus newOrdersStatus,
      required final ShPastOrdersStatus pastOrdersStatus,
      required final List<OrderEntity> newOrders,
      required final List<OrderEntity> pastOrders,
      final String? message}) = _$_OrdersState;
  const _OrdersState._() : super._();

  @override
  ShNewOrdersStatus get newOrdersStatus;
  @override
  ShPastOrdersStatus get pastOrdersStatus;
  @override
  List<OrderEntity> get newOrders;
  @override
  List<OrderEntity> get pastOrders;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
