// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentStatisticsModel _$StudentStatisticsModelFromJson(
  Map<String, dynamic> json,
) {
  return _StudentStatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$StudentStatisticsModel {
  int get total => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get suspended => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_subscriptions')
  int get monthlySubscriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_session_subscriptions')
  int get perSessionSubscriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_students')
  int get freeStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_remaining_amount')
  double get totalRemainingAmount => throw _privateConstructorUsedError;

  /// Serializes this StudentStatisticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentStatisticsModelCopyWith<StudentStatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStatisticsModelCopyWith<$Res> {
  factory $StudentStatisticsModelCopyWith(
    StudentStatisticsModel value,
    $Res Function(StudentStatisticsModel) then,
  ) = _$StudentStatisticsModelCopyWithImpl<$Res, StudentStatisticsModel>;
  @useResult
  $Res call({
    int total,
    int active,
    int pending,
    int suspended,
    @JsonKey(name: 'monthly_subscriptions') int monthlySubscriptions,
    @JsonKey(name: 'per_session_subscriptions') int perSessionSubscriptions,
    @JsonKey(name: 'free_students') int freeStudents,
    @JsonKey(name: 'total_remaining_amount') double totalRemainingAmount,
  });
}

/// @nodoc
class _$StudentStatisticsModelCopyWithImpl<
  $Res,
  $Val extends StudentStatisticsModel
>
    implements $StudentStatisticsModelCopyWith<$Res> {
  _$StudentStatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? pending = null,
    Object? suspended = null,
    Object? monthlySubscriptions = null,
    Object? perSessionSubscriptions = null,
    Object? freeStudents = null,
    Object? totalRemainingAmount = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as int,
            pending: null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                      as int,
            suspended: null == suspended
                ? _value.suspended
                : suspended // ignore: cast_nullable_to_non_nullable
                      as int,
            monthlySubscriptions: null == monthlySubscriptions
                ? _value.monthlySubscriptions
                : monthlySubscriptions // ignore: cast_nullable_to_non_nullable
                      as int,
            perSessionSubscriptions: null == perSessionSubscriptions
                ? _value.perSessionSubscriptions
                : perSessionSubscriptions // ignore: cast_nullable_to_non_nullable
                      as int,
            freeStudents: null == freeStudents
                ? _value.freeStudents
                : freeStudents // ignore: cast_nullable_to_non_nullable
                      as int,
            totalRemainingAmount: null == totalRemainingAmount
                ? _value.totalRemainingAmount
                : totalRemainingAmount // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentStatisticsModelImplCopyWith<$Res>
    implements $StudentStatisticsModelCopyWith<$Res> {
  factory _$$StudentStatisticsModelImplCopyWith(
    _$StudentStatisticsModelImpl value,
    $Res Function(_$StudentStatisticsModelImpl) then,
  ) = __$$StudentStatisticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int active,
    int pending,
    int suspended,
    @JsonKey(name: 'monthly_subscriptions') int monthlySubscriptions,
    @JsonKey(name: 'per_session_subscriptions') int perSessionSubscriptions,
    @JsonKey(name: 'free_students') int freeStudents,
    @JsonKey(name: 'total_remaining_amount') double totalRemainingAmount,
  });
}

/// @nodoc
class __$$StudentStatisticsModelImplCopyWithImpl<$Res>
    extends
        _$StudentStatisticsModelCopyWithImpl<$Res, _$StudentStatisticsModelImpl>
    implements _$$StudentStatisticsModelImplCopyWith<$Res> {
  __$$StudentStatisticsModelImplCopyWithImpl(
    _$StudentStatisticsModelImpl _value,
    $Res Function(_$StudentStatisticsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? pending = null,
    Object? suspended = null,
    Object? monthlySubscriptions = null,
    Object? perSessionSubscriptions = null,
    Object? freeStudents = null,
    Object? totalRemainingAmount = null,
  }) {
    return _then(
      _$StudentStatisticsModelImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as int,
        pending: null == pending
            ? _value.pending
            : pending // ignore: cast_nullable_to_non_nullable
                  as int,
        suspended: null == suspended
            ? _value.suspended
            : suspended // ignore: cast_nullable_to_non_nullable
                  as int,
        monthlySubscriptions: null == monthlySubscriptions
            ? _value.monthlySubscriptions
            : monthlySubscriptions // ignore: cast_nullable_to_non_nullable
                  as int,
        perSessionSubscriptions: null == perSessionSubscriptions
            ? _value.perSessionSubscriptions
            : perSessionSubscriptions // ignore: cast_nullable_to_non_nullable
                  as int,
        freeStudents: null == freeStudents
            ? _value.freeStudents
            : freeStudents // ignore: cast_nullable_to_non_nullable
                  as int,
        totalRemainingAmount: null == totalRemainingAmount
            ? _value.totalRemainingAmount
            : totalRemainingAmount // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentStatisticsModelImpl implements _StudentStatisticsModel {
  const _$StudentStatisticsModelImpl({
    required this.total,
    required this.active,
    required this.pending,
    required this.suspended,
    @JsonKey(name: 'monthly_subscriptions') required this.monthlySubscriptions,
    @JsonKey(name: 'per_session_subscriptions')
    required this.perSessionSubscriptions,
    @JsonKey(name: 'free_students') required this.freeStudents,
    @JsonKey(name: 'total_remaining_amount') required this.totalRemainingAmount,
  });

  factory _$StudentStatisticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentStatisticsModelImplFromJson(json);

  @override
  final int total;
  @override
  final int active;
  @override
  final int pending;
  @override
  final int suspended;
  @override
  @JsonKey(name: 'monthly_subscriptions')
  final int monthlySubscriptions;
  @override
  @JsonKey(name: 'per_session_subscriptions')
  final int perSessionSubscriptions;
  @override
  @JsonKey(name: 'free_students')
  final int freeStudents;
  @override
  @JsonKey(name: 'total_remaining_amount')
  final double totalRemainingAmount;

  @override
  String toString() {
    return 'StudentStatisticsModel(total: $total, active: $active, pending: $pending, suspended: $suspended, monthlySubscriptions: $monthlySubscriptions, perSessionSubscriptions: $perSessionSubscriptions, freeStudents: $freeStudents, totalRemainingAmount: $totalRemainingAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStatisticsModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.suspended, suspended) ||
                other.suspended == suspended) &&
            (identical(other.monthlySubscriptions, monthlySubscriptions) ||
                other.monthlySubscriptions == monthlySubscriptions) &&
            (identical(
                  other.perSessionSubscriptions,
                  perSessionSubscriptions,
                ) ||
                other.perSessionSubscriptions == perSessionSubscriptions) &&
            (identical(other.freeStudents, freeStudents) ||
                other.freeStudents == freeStudents) &&
            (identical(other.totalRemainingAmount, totalRemainingAmount) ||
                other.totalRemainingAmount == totalRemainingAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    active,
    pending,
    suspended,
    monthlySubscriptions,
    perSessionSubscriptions,
    freeStudents,
    totalRemainingAmount,
  );

  /// Create a copy of StudentStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStatisticsModelImplCopyWith<_$StudentStatisticsModelImpl>
  get copyWith =>
      __$$StudentStatisticsModelImplCopyWithImpl<_$StudentStatisticsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentStatisticsModelImplToJson(this);
  }
}

abstract class _StudentStatisticsModel implements StudentStatisticsModel {
  const factory _StudentStatisticsModel({
    required final int total,
    required final int active,
    required final int pending,
    required final int suspended,
    @JsonKey(name: 'monthly_subscriptions')
    required final int monthlySubscriptions,
    @JsonKey(name: 'per_session_subscriptions')
    required final int perSessionSubscriptions,
    @JsonKey(name: 'free_students') required final int freeStudents,
    @JsonKey(name: 'total_remaining_amount')
    required final double totalRemainingAmount,
  }) = _$StudentStatisticsModelImpl;

  factory _StudentStatisticsModel.fromJson(Map<String, dynamic> json) =
      _$StudentStatisticsModelImpl.fromJson;

  @override
  int get total;
  @override
  int get active;
  @override
  int get pending;
  @override
  int get suspended;
  @override
  @JsonKey(name: 'monthly_subscriptions')
  int get monthlySubscriptions;
  @override
  @JsonKey(name: 'per_session_subscriptions')
  int get perSessionSubscriptions;
  @override
  @JsonKey(name: 'free_students')
  int get freeStudents;
  @override
  @JsonKey(name: 'total_remaining_amount')
  double get totalRemainingAmount;

  /// Create a copy of StudentStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentStatisticsModelImplCopyWith<_$StudentStatisticsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
