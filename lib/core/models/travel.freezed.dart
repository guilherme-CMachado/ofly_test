// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
mixin _$Travel {
  String get company => throw _privateConstructorUsedError;
  String get airport => throw _privateConstructorUsedError;
  String get ticket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res, Travel>;
  @useResult
  $Res call({String company, String airport, String ticket});
}

/// @nodoc
class _$TravelCopyWithImpl<$Res, $Val extends Travel>
    implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? airport = null,
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelImplCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$$TravelImplCopyWith(
          _$TravelImpl value, $Res Function(_$TravelImpl) then) =
      __$$TravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String company, String airport, String ticket});
}

/// @nodoc
class __$$TravelImplCopyWithImpl<$Res>
    extends _$TravelCopyWithImpl<$Res, _$TravelImpl>
    implements _$$TravelImplCopyWith<$Res> {
  __$$TravelImplCopyWithImpl(
      _$TravelImpl _value, $Res Function(_$TravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? airport = null,
    Object? ticket = null,
  }) {
    return _then(_$TravelImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelImpl with DiagnosticableTreeMixin implements _Travel {
  const _$TravelImpl(
      {required this.company, required this.airport, required this.ticket});

  factory _$TravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelImplFromJson(json);

  @override
  final String company;
  @override
  final String airport;
  @override
  final String ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Travel(company: $company, airport: $airport, ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Travel'))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('airport', airport))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.airport, airport) || other.airport == airport) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company, airport, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      __$$TravelImplCopyWithImpl<_$TravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelImplToJson(
      this,
    );
  }
}

abstract class _Travel implements Travel {
  const factory _Travel(
      {required final String company,
      required final String airport,
      required final String ticket}) = _$TravelImpl;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$TravelImpl.fromJson;

  @override
  String get company;
  @override
  String get airport;
  @override
  String get ticket;
  @override
  @JsonKey(ignore: true)
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
