// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_type')
  String get subscriptionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscription_status')
  String get subscriptionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_sessions')
  int get remainingSessions => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_amount')
  String get remainingAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'groups_count')
  int get groupsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_attendance')
  LastAttendanceModel? get lastAttendance => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this StudentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
    StudentModel value,
    $Res Function(StudentModel) then,
  ) = _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    String phone,
    @JsonKey(name: 'subscription_type') String subscriptionType,
    @JsonKey(name: 'subscription_status') String subscriptionStatus,
    @JsonKey(name: 'remaining_sessions') int remainingSessions,
    @JsonKey(name: 'remaining_amount') String remainingAmount,
    @JsonKey(name: 'groups_count') int groupsCount,
    @JsonKey(name: 'last_attendance') LastAttendanceModel? lastAttendance,
    @JsonKey(name: 'payment_status') String paymentStatus,
    @JsonKey(name: 'is_active') bool isActive,
  });

  $LastAttendanceModelCopyWith<$Res>? get lastAttendance;
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? phone = null,
    Object? subscriptionType = null,
    Object? subscriptionStatus = null,
    Object? remainingSessions = null,
    Object? remainingAmount = null,
    Object? groupsCount = null,
    Object? lastAttendance = freezed,
    Object? paymentStatus = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            subscriptionType: null == subscriptionType
                ? _value.subscriptionType
                : subscriptionType // ignore: cast_nullable_to_non_nullable
                      as String,
            subscriptionStatus: null == subscriptionStatus
                ? _value.subscriptionStatus
                : subscriptionStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            remainingSessions: null == remainingSessions
                ? _value.remainingSessions
                : remainingSessions // ignore: cast_nullable_to_non_nullable
                      as int,
            remainingAmount: null == remainingAmount
                ? _value.remainingAmount
                : remainingAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            groupsCount: null == groupsCount
                ? _value.groupsCount
                : groupsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastAttendance: freezed == lastAttendance
                ? _value.lastAttendance
                : lastAttendance // ignore: cast_nullable_to_non_nullable
                      as LastAttendanceModel?,
            paymentStatus: null == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastAttendanceModelCopyWith<$Res>? get lastAttendance {
    if (_value.lastAttendance == null) {
      return null;
    }

    return $LastAttendanceModelCopyWith<$Res>(_value.lastAttendance!, (value) {
      return _then(_value.copyWith(lastAttendance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentModelImplCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$StudentModelImplCopyWith(
    _$StudentModelImpl value,
    $Res Function(_$StudentModelImpl) then,
  ) = __$$StudentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String code,
    String phone,
    @JsonKey(name: 'subscription_type') String subscriptionType,
    @JsonKey(name: 'subscription_status') String subscriptionStatus,
    @JsonKey(name: 'remaining_sessions') int remainingSessions,
    @JsonKey(name: 'remaining_amount') String remainingAmount,
    @JsonKey(name: 'groups_count') int groupsCount,
    @JsonKey(name: 'last_attendance') LastAttendanceModel? lastAttendance,
    @JsonKey(name: 'payment_status') String paymentStatus,
    @JsonKey(name: 'is_active') bool isActive,
  });

  @override
  $LastAttendanceModelCopyWith<$Res>? get lastAttendance;
}

/// @nodoc
class __$$StudentModelImplCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$StudentModelImpl>
    implements _$$StudentModelImplCopyWith<$Res> {
  __$$StudentModelImplCopyWithImpl(
    _$StudentModelImpl _value,
    $Res Function(_$StudentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? phone = null,
    Object? subscriptionType = null,
    Object? subscriptionStatus = null,
    Object? remainingSessions = null,
    Object? remainingAmount = null,
    Object? groupsCount = null,
    Object? lastAttendance = freezed,
    Object? paymentStatus = null,
    Object? isActive = null,
  }) {
    return _then(
      _$StudentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        subscriptionType: null == subscriptionType
            ? _value.subscriptionType
            : subscriptionType // ignore: cast_nullable_to_non_nullable
                  as String,
        subscriptionStatus: null == subscriptionStatus
            ? _value.subscriptionStatus
            : subscriptionStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        remainingSessions: null == remainingSessions
            ? _value.remainingSessions
            : remainingSessions // ignore: cast_nullable_to_non_nullable
                  as int,
        remainingAmount: null == remainingAmount
            ? _value.remainingAmount
            : remainingAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        groupsCount: null == groupsCount
            ? _value.groupsCount
            : groupsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastAttendance: freezed == lastAttendance
            ? _value.lastAttendance
            : lastAttendance // ignore: cast_nullable_to_non_nullable
                  as LastAttendanceModel?,
        paymentStatus: null == paymentStatus
            ? _value.paymentStatus
            : paymentStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentModelImpl implements _StudentModel {
  const _$StudentModelImpl({
    required this.id,
    required this.name,
    required this.code,
    required this.phone,
    @JsonKey(name: 'subscription_type') required this.subscriptionType,
    @JsonKey(name: 'subscription_status') required this.subscriptionStatus,
    @JsonKey(name: 'remaining_sessions') required this.remainingSessions,
    @JsonKey(name: 'remaining_amount') required this.remainingAmount,
    @JsonKey(name: 'groups_count') required this.groupsCount,
    @JsonKey(name: 'last_attendance') this.lastAttendance,
    @JsonKey(name: 'payment_status') required this.paymentStatus,
    @JsonKey(name: 'is_active') required this.isActive,
  });

  factory _$StudentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String phone;
  @override
  @JsonKey(name: 'subscription_type')
  final String subscriptionType;
  @override
  @JsonKey(name: 'subscription_status')
  final String subscriptionStatus;
  @override
  @JsonKey(name: 'remaining_sessions')
  final int remainingSessions;
  @override
  @JsonKey(name: 'remaining_amount')
  final String remainingAmount;
  @override
  @JsonKey(name: 'groups_count')
  final int groupsCount;
  @override
  @JsonKey(name: 'last_attendance')
  final LastAttendanceModel? lastAttendance;
  @override
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'StudentModel(id: $id, name: $name, code: $code, phone: $phone, subscriptionType: $subscriptionType, subscriptionStatus: $subscriptionStatus, remainingSessions: $remainingSessions, remainingAmount: $remainingAmount, groupsCount: $groupsCount, lastAttendance: $lastAttendance, paymentStatus: $paymentStatus, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.remainingSessions, remainingSessions) ||
                other.remainingSessions == remainingSessions) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.groupsCount, groupsCount) ||
                other.groupsCount == groupsCount) &&
            (identical(other.lastAttendance, lastAttendance) ||
                other.lastAttendance == lastAttendance) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    code,
    phone,
    subscriptionType,
    subscriptionStatus,
    remainingSessions,
    remainingAmount,
    groupsCount,
    lastAttendance,
    paymentStatus,
    isActive,
  );

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      __$$StudentModelImplCopyWithImpl<_$StudentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentModelImplToJson(this);
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel({
    required final String id,
    required final String name,
    required final String code,
    required final String phone,
    @JsonKey(name: 'subscription_type') required final String subscriptionType,
    @JsonKey(name: 'subscription_status')
    required final String subscriptionStatus,
    @JsonKey(name: 'remaining_sessions') required final int remainingSessions,
    @JsonKey(name: 'remaining_amount') required final String remainingAmount,
    @JsonKey(name: 'groups_count') required final int groupsCount,
    @JsonKey(name: 'last_attendance') final LastAttendanceModel? lastAttendance,
    @JsonKey(name: 'payment_status') required final String paymentStatus,
    @JsonKey(name: 'is_active') required final bool isActive,
  }) = _$StudentModelImpl;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$StudentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get phone;
  @override
  @JsonKey(name: 'subscription_type')
  String get subscriptionType;
  @override
  @JsonKey(name: 'subscription_status')
  String get subscriptionStatus;
  @override
  @JsonKey(name: 'remaining_sessions')
  int get remainingSessions;
  @override
  @JsonKey(name: 'remaining_amount')
  String get remainingAmount;
  @override
  @JsonKey(name: 'groups_count')
  int get groupsCount;
  @override
  @JsonKey(name: 'last_attendance')
  LastAttendanceModel? get lastAttendance;
  @override
  @JsonKey(name: 'payment_status')
  String get paymentStatus;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of StudentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentModelImplCopyWith<_$StudentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LastAttendanceModel _$LastAttendanceModelFromJson(Map<String, dynamic> json) {
  return _LastAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$LastAttendanceModel {
  String get date => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this LastAttendanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastAttendanceModelCopyWith<LastAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastAttendanceModelCopyWith<$Res> {
  factory $LastAttendanceModelCopyWith(
    LastAttendanceModel value,
    $Res Function(LastAttendanceModel) then,
  ) = _$LastAttendanceModelCopyWithImpl<$Res, LastAttendanceModel>;
  @useResult
  $Res call({String date, String status});
}

/// @nodoc
class _$LastAttendanceModelCopyWithImpl<$Res, $Val extends LastAttendanceModel>
    implements $LastAttendanceModelCopyWith<$Res> {
  _$LastAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastAttendanceModelImplCopyWith<$Res>
    implements $LastAttendanceModelCopyWith<$Res> {
  factory _$$LastAttendanceModelImplCopyWith(
    _$LastAttendanceModelImpl value,
    $Res Function(_$LastAttendanceModelImpl) then,
  ) = __$$LastAttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String status});
}

/// @nodoc
class __$$LastAttendanceModelImplCopyWithImpl<$Res>
    extends _$LastAttendanceModelCopyWithImpl<$Res, _$LastAttendanceModelImpl>
    implements _$$LastAttendanceModelImplCopyWith<$Res> {
  __$$LastAttendanceModelImplCopyWithImpl(
    _$LastAttendanceModelImpl _value,
    $Res Function(_$LastAttendanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? status = null}) {
    return _then(
      _$LastAttendanceModelImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastAttendanceModelImpl implements _LastAttendanceModel {
  const _$LastAttendanceModelImpl({required this.date, required this.status});

  factory _$LastAttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastAttendanceModelImplFromJson(json);

  @override
  final String date;
  @override
  final String status;

  @override
  String toString() {
    return 'LastAttendanceModel(date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastAttendanceModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, status);

  /// Create a copy of LastAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastAttendanceModelImplCopyWith<_$LastAttendanceModelImpl> get copyWith =>
      __$$LastAttendanceModelImplCopyWithImpl<_$LastAttendanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LastAttendanceModelImplToJson(this);
  }
}

abstract class _LastAttendanceModel implements LastAttendanceModel {
  const factory _LastAttendanceModel({
    required final String date,
    required final String status,
  }) = _$LastAttendanceModelImpl;

  factory _LastAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$LastAttendanceModelImpl.fromJson;

  @override
  String get date;
  @override
  String get status;

  /// Create a copy of LastAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastAttendanceModelImplCopyWith<_$LastAttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
