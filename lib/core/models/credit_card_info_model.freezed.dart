// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditCardInfo _$CreditCardInfoFromJson(Map<String, dynamic> json) {
  return _CreditCardInfo.fromJson(json);
}

/// @nodoc
mixin _$CreditCardInfo {
  double get value => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get extract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardInfoCopyWith<CreditCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardInfoCopyWith<$Res> {
  factory $CreditCardInfoCopyWith(
          CreditCardInfo value, $Res Function(CreditCardInfo) then) =
      _$CreditCardInfoCopyWithImpl<$Res, CreditCardInfo>;
  @useResult
  $Res call({double value, String brand, String extract});
}

/// @nodoc
class _$CreditCardInfoCopyWithImpl<$Res, $Val extends CreditCardInfo>
    implements $CreditCardInfoCopyWith<$Res> {
  _$CreditCardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? brand = null,
    Object? extract = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      extract: null == extract
          ? _value.extract
          : extract // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardInfoImplCopyWith<$Res>
    implements $CreditCardInfoCopyWith<$Res> {
  factory _$$CreditCardInfoImplCopyWith(_$CreditCardInfoImpl value,
          $Res Function(_$CreditCardInfoImpl) then) =
      __$$CreditCardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String brand, String extract});
}

/// @nodoc
class __$$CreditCardInfoImplCopyWithImpl<$Res>
    extends _$CreditCardInfoCopyWithImpl<$Res, _$CreditCardInfoImpl>
    implements _$$CreditCardInfoImplCopyWith<$Res> {
  __$$CreditCardInfoImplCopyWithImpl(
      _$CreditCardInfoImpl _value, $Res Function(_$CreditCardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? brand = null,
    Object? extract = null,
  }) {
    return _then(_$CreditCardInfoImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      extract: null == extract
          ? _value.extract
          : extract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditCardInfoImpl
    with DiagnosticableTreeMixin
    implements _CreditCardInfo {
  const _$CreditCardInfoImpl(
      {required this.value, required this.brand, required this.extract});

  factory _$CreditCardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditCardInfoImplFromJson(json);

  @override
  final double value;
  @override
  final String brand;
  @override
  final String extract;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditCardInfo(value: $value, brand: $brand, extract: $extract)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditCardInfo'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('extract', extract));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardInfoImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.extract, extract) || other.extract == extract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, brand, extract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardInfoImplCopyWith<_$CreditCardInfoImpl> get copyWith =>
      __$$CreditCardInfoImplCopyWithImpl<_$CreditCardInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditCardInfoImplToJson(
      this,
    );
  }
}

abstract class _CreditCardInfo implements CreditCardInfo {
  const factory _CreditCardInfo(
      {required final double value,
      required final String brand,
      required final String extract}) = _$CreditCardInfoImpl;

  factory _CreditCardInfo.fromJson(Map<String, dynamic> json) =
      _$CreditCardInfoImpl.fromJson;

  @override
  double get value;
  @override
  String get brand;
  @override
  String get extract;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardInfoImplCopyWith<_$CreditCardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
