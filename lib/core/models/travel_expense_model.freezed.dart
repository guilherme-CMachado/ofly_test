// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelExpenseModel _$TravelExpenseModelFromJson(Map<String, dynamic> json) {
  return _TravelExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$TravelExpenseModel {
  DateTime get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get synced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelExpenseModelCopyWith<TravelExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelExpenseModelCopyWith<$Res> {
  factory $TravelExpenseModelCopyWith(
          TravelExpenseModel value, $Res Function(TravelExpenseModel) then) =
      _$TravelExpenseModelCopyWithImpl<$Res, TravelExpenseModel>;
  @useResult
  $Res call(
      {DateTime date,
      double amount,
      String category,
      String description,
      bool synced});
}

/// @nodoc
class _$TravelExpenseModelCopyWithImpl<$Res, $Val extends TravelExpenseModel>
    implements $TravelExpenseModelCopyWith<$Res> {
  _$TravelExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? category = null,
    Object? description = null,
    Object? synced = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      synced: null == synced
          ? _value.synced
          : synced // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelExpenseModelImplCopyWith<$Res>
    implements $TravelExpenseModelCopyWith<$Res> {
  factory _$$TravelExpenseModelImplCopyWith(_$TravelExpenseModelImpl value,
          $Res Function(_$TravelExpenseModelImpl) then) =
      __$$TravelExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double amount,
      String category,
      String description,
      bool synced});
}

/// @nodoc
class __$$TravelExpenseModelImplCopyWithImpl<$Res>
    extends _$TravelExpenseModelCopyWithImpl<$Res, _$TravelExpenseModelImpl>
    implements _$$TravelExpenseModelImplCopyWith<$Res> {
  __$$TravelExpenseModelImplCopyWithImpl(_$TravelExpenseModelImpl _value,
      $Res Function(_$TravelExpenseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? category = null,
    Object? description = null,
    Object? synced = null,
  }) {
    return _then(_$TravelExpenseModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      synced: null == synced
          ? _value.synced
          : synced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelExpenseModelImpl
    with DiagnosticableTreeMixin
    implements _TravelExpenseModel {
  const _$TravelExpenseModelImpl(
      {required this.date,
      required this.amount,
      required this.category,
      required this.description,
      required this.synced});

  factory _$TravelExpenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelExpenseModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double amount;
  @override
  final String category;
  @override
  final String description;
  @override
  final bool synced;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelExpenseModel(date: $date, amount: $amount, category: $category, description: $description, synced: $synced)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelExpenseModel'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('synced', synced));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelExpenseModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.synced, synced) || other.synced == synced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, amount, category, description, synced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelExpenseModelImplCopyWith<_$TravelExpenseModelImpl> get copyWith =>
      __$$TravelExpenseModelImplCopyWithImpl<_$TravelExpenseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelExpenseModelImplToJson(
      this,
    );
  }
}

abstract class _TravelExpenseModel implements TravelExpenseModel {
  const factory _TravelExpenseModel(
      {required final DateTime date,
      required final double amount,
      required final String category,
      required final String description,
      required final bool synced}) = _$TravelExpenseModelImpl;

  factory _TravelExpenseModel.fromJson(Map<String, dynamic> json) =
      _$TravelExpenseModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get amount;
  @override
  String get category;
  @override
  String get description;
  @override
  bool get synced;
  @override
  @JsonKey(ignore: true)
  _$$TravelExpenseModelImplCopyWith<_$TravelExpenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
