// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_travels_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookedTravelsModel _$BookedTravelsModelFromJson(Map<String, dynamic> json) {
  return _BookedTravelsModel.fromJson(json);
}

/// @nodoc
mixin _$BookedTravelsModel {
  String get airline => throw _privateConstructorUsedError;
  String get airport => throw _privateConstructorUsedError;
  String get flightcard => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookedTravelsModelCopyWith<BookedTravelsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedTravelsModelCopyWith<$Res> {
  factory $BookedTravelsModelCopyWith(
          BookedTravelsModel value, $Res Function(BookedTravelsModel) then) =
      _$BookedTravelsModelCopyWithImpl<$Res, BookedTravelsModel>;
  @useResult
  $Res call({String airline, String airport, String flightcard, String uid});
}

/// @nodoc
class _$BookedTravelsModelCopyWithImpl<$Res, $Val extends BookedTravelsModel>
    implements $BookedTravelsModelCopyWith<$Res> {
  _$BookedTravelsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airline = null,
    Object? airport = null,
    Object? flightcard = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
      flightcard: null == flightcard
          ? _value.flightcard
          : flightcard // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookedTravelsModelImplCopyWith<$Res>
    implements $BookedTravelsModelCopyWith<$Res> {
  factory _$$BookedTravelsModelImplCopyWith(_$BookedTravelsModelImpl value,
          $Res Function(_$BookedTravelsModelImpl) then) =
      __$$BookedTravelsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String airline, String airport, String flightcard, String uid});
}

/// @nodoc
class __$$BookedTravelsModelImplCopyWithImpl<$Res>
    extends _$BookedTravelsModelCopyWithImpl<$Res, _$BookedTravelsModelImpl>
    implements _$$BookedTravelsModelImplCopyWith<$Res> {
  __$$BookedTravelsModelImplCopyWithImpl(_$BookedTravelsModelImpl _value,
      $Res Function(_$BookedTravelsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airline = null,
    Object? airport = null,
    Object? flightcard = null,
    Object? uid = null,
  }) {
    return _then(_$BookedTravelsModelImpl(
      airline: null == airline
          ? _value.airline
          : airline // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
      flightcard: null == flightcard
          ? _value.flightcard
          : flightcard // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookedTravelsModelImpl
    with DiagnosticableTreeMixin
    implements _BookedTravelsModel {
  const _$BookedTravelsModelImpl(
      {required this.airline,
      required this.airport,
      required this.flightcard,
      required this.uid});

  factory _$BookedTravelsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookedTravelsModelImplFromJson(json);

  @override
  final String airline;
  @override
  final String airport;
  @override
  final String flightcard;
  @override
  final String uid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookedTravelsModel(airline: $airline, airport: $airport, flightcard: $flightcard, uid: $uid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookedTravelsModel'))
      ..add(DiagnosticsProperty('airline', airline))
      ..add(DiagnosticsProperty('airport', airport))
      ..add(DiagnosticsProperty('flightcard', flightcard))
      ..add(DiagnosticsProperty('uid', uid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedTravelsModelImpl &&
            (identical(other.airline, airline) || other.airline == airline) &&
            (identical(other.airport, airport) || other.airport == airport) &&
            (identical(other.flightcard, flightcard) ||
                other.flightcard == flightcard) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, airline, airport, flightcard, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedTravelsModelImplCopyWith<_$BookedTravelsModelImpl> get copyWith =>
      __$$BookedTravelsModelImplCopyWithImpl<_$BookedTravelsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookedTravelsModelImplToJson(
      this,
    );
  }
}

abstract class _BookedTravelsModel implements BookedTravelsModel {
  const factory _BookedTravelsModel(
      {required final String airline,
      required final String airport,
      required final String flightcard,
      required final String uid}) = _$BookedTravelsModelImpl;

  factory _BookedTravelsModel.fromJson(Map<String, dynamic> json) =
      _$BookedTravelsModelImpl.fromJson;

  @override
  String get airline;
  @override
  String get airport;
  @override
  String get flightcard;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$BookedTravelsModelImplCopyWith<_$BookedTravelsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
