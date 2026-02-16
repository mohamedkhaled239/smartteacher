// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_code')
  String get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'group')
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_paid')
  String get amountPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_amount')
  String get remainingAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  String? get paymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_start')
  String get periodStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_end')
  String get periodEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_number')
  String get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  String get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_reason')
  String? get discountReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_notes')
  String? get internalNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_overdue')
  bool get isOverdue => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_overdue')
  int get daysOverdue => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
    PaymentModel value,
    $Res Function(PaymentModel) then,
  ) = _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student') String studentId,
    @JsonKey(name: 'student_name') String studentName,
    @JsonKey(name: 'student_code') String studentCode,
    @JsonKey(name: 'group') String? groupId,
    @JsonKey(name: 'payment_type') String paymentType,
    String amount,
    @JsonKey(name: 'amount_paid') String amountPaid,
    @JsonKey(name: 'remaining_amount') String remainingAmount,
    @JsonKey(name: 'payment_method') String paymentMethod,
    String status,
    @JsonKey(name: 'due_date') String dueDate,
    @JsonKey(name: 'payment_date') String? paymentDate,
    @JsonKey(name: 'period_start') String periodStart,
    @JsonKey(name: 'period_end') String periodEnd,
    @JsonKey(name: 'reference_number') String referenceNumber,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'discount_amount') String discountAmount,
    @JsonKey(name: 'discount_reason') String? discountReason,
    String? notes,
    @JsonKey(name: 'internal_notes') String? internalNotes,
    @JsonKey(name: 'is_overdue') bool isOverdue,
    @JsonKey(name: 'days_overdue') int daysOverdue,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? studentCode = null,
    Object? groupId = freezed,
    Object? paymentType = null,
    Object? amount = null,
    Object? amountPaid = null,
    Object? remainingAmount = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? dueDate = null,
    Object? paymentDate = freezed,
    Object? periodStart = null,
    Object? periodEnd = null,
    Object? referenceNumber = null,
    Object? transactionId = freezed,
    Object? discountAmount = null,
    Object? discountReason = freezed,
    Object? notes = freezed,
    Object? internalNotes = freezed,
    Object? isOverdue = null,
    Object? daysOverdue = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentName: null == studentName
                ? _value.studentName
                : studentName // ignore: cast_nullable_to_non_nullable
                      as String,
            studentCode: null == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String,
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentType: null == paymentType
                ? _value.paymentType
                : paymentType // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String,
            amountPaid: null == amountPaid
                ? _value.amountPaid
                : amountPaid // ignore: cast_nullable_to_non_nullable
                      as String,
            remainingAmount: null == remainingAmount
                ? _value.remainingAmount
                : remainingAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            paymentMethod: null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            dueDate: null == dueDate
                ? _value.dueDate
                : dueDate // ignore: cast_nullable_to_non_nullable
                      as String,
            paymentDate: freezed == paymentDate
                ? _value.paymentDate
                : paymentDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            periodStart: null == periodStart
                ? _value.periodStart
                : periodStart // ignore: cast_nullable_to_non_nullable
                      as String,
            periodEnd: null == periodEnd
                ? _value.periodEnd
                : periodEnd // ignore: cast_nullable_to_non_nullable
                      as String,
            referenceNumber: null == referenceNumber
                ? _value.referenceNumber
                : referenceNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            transactionId: freezed == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountAmount: null == discountAmount
                ? _value.discountAmount
                : discountAmount // ignore: cast_nullable_to_non_nullable
                      as String,
            discountReason: freezed == discountReason
                ? _value.discountReason
                : discountReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            internalNotes: freezed == internalNotes
                ? _value.internalNotes
                : internalNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            isOverdue: null == isOverdue
                ? _value.isOverdue
                : isOverdue // ignore: cast_nullable_to_non_nullable
                      as bool,
            daysOverdue: null == daysOverdue
                ? _value.daysOverdue
                : daysOverdue // ignore: cast_nullable_to_non_nullable
                      as int,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
    _$PaymentModelImpl value,
    $Res Function(_$PaymentModelImpl) then,
  ) = __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student') String studentId,
    @JsonKey(name: 'student_name') String studentName,
    @JsonKey(name: 'student_code') String studentCode,
    @JsonKey(name: 'group') String? groupId,
    @JsonKey(name: 'payment_type') String paymentType,
    String amount,
    @JsonKey(name: 'amount_paid') String amountPaid,
    @JsonKey(name: 'remaining_amount') String remainingAmount,
    @JsonKey(name: 'payment_method') String paymentMethod,
    String status,
    @JsonKey(name: 'due_date') String dueDate,
    @JsonKey(name: 'payment_date') String? paymentDate,
    @JsonKey(name: 'period_start') String periodStart,
    @JsonKey(name: 'period_end') String periodEnd,
    @JsonKey(name: 'reference_number') String referenceNumber,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'discount_amount') String discountAmount,
    @JsonKey(name: 'discount_reason') String? discountReason,
    String? notes,
    @JsonKey(name: 'internal_notes') String? internalNotes,
    @JsonKey(name: 'is_overdue') bool isOverdue,
    @JsonKey(name: 'days_overdue') int daysOverdue,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  });
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
    _$PaymentModelImpl _value,
    $Res Function(_$PaymentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? studentCode = null,
    Object? groupId = freezed,
    Object? paymentType = null,
    Object? amount = null,
    Object? amountPaid = null,
    Object? remainingAmount = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? dueDate = null,
    Object? paymentDate = freezed,
    Object? periodStart = null,
    Object? periodEnd = null,
    Object? referenceNumber = null,
    Object? transactionId = freezed,
    Object? discountAmount = null,
    Object? discountReason = freezed,
    Object? notes = freezed,
    Object? internalNotes = freezed,
    Object? isOverdue = null,
    Object? daysOverdue = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$PaymentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentName: null == studentName
            ? _value.studentName
            : studentName // ignore: cast_nullable_to_non_nullable
                  as String,
        studentCode: null == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentType: null == paymentType
            ? _value.paymentType
            : paymentType // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        amountPaid: null == amountPaid
            ? _value.amountPaid
            : amountPaid // ignore: cast_nullable_to_non_nullable
                  as String,
        remainingAmount: null == remainingAmount
            ? _value.remainingAmount
            : remainingAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        paymentMethod: null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        dueDate: null == dueDate
            ? _value.dueDate
            : dueDate // ignore: cast_nullable_to_non_nullable
                  as String,
        paymentDate: freezed == paymentDate
            ? _value.paymentDate
            : paymentDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        periodStart: null == periodStart
            ? _value.periodStart
            : periodStart // ignore: cast_nullable_to_non_nullable
                  as String,
        periodEnd: null == periodEnd
            ? _value.periodEnd
            : periodEnd // ignore: cast_nullable_to_non_nullable
                  as String,
        referenceNumber: null == referenceNumber
            ? _value.referenceNumber
            : referenceNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        transactionId: freezed == transactionId
            ? _value.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountAmount: null == discountAmount
            ? _value.discountAmount
            : discountAmount // ignore: cast_nullable_to_non_nullable
                  as String,
        discountReason: freezed == discountReason
            ? _value.discountReason
            : discountReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        internalNotes: freezed == internalNotes
            ? _value.internalNotes
            : internalNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        isOverdue: null == isOverdue
            ? _value.isOverdue
            : isOverdue // ignore: cast_nullable_to_non_nullable
                  as bool,
        daysOverdue: null == daysOverdue
            ? _value.daysOverdue
            : daysOverdue // ignore: cast_nullable_to_non_nullable
                  as int,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl implements _PaymentModel {
  const _$PaymentModelImpl({
    required this.id,
    @JsonKey(name: 'student') required this.studentId,
    @JsonKey(name: 'student_name') required this.studentName,
    @JsonKey(name: 'student_code') required this.studentCode,
    @JsonKey(name: 'group') this.groupId,
    @JsonKey(name: 'payment_type') required this.paymentType,
    required this.amount,
    @JsonKey(name: 'amount_paid') required this.amountPaid,
    @JsonKey(name: 'remaining_amount') required this.remainingAmount,
    @JsonKey(name: 'payment_method') required this.paymentMethod,
    required this.status,
    @JsonKey(name: 'due_date') required this.dueDate,
    @JsonKey(name: 'payment_date') this.paymentDate,
    @JsonKey(name: 'period_start') required this.periodStart,
    @JsonKey(name: 'period_end') required this.periodEnd,
    @JsonKey(name: 'reference_number') required this.referenceNumber,
    @JsonKey(name: 'transaction_id') this.transactionId,
    @JsonKey(name: 'discount_amount') required this.discountAmount,
    @JsonKey(name: 'discount_reason') this.discountReason,
    this.notes,
    @JsonKey(name: 'internal_notes') this.internalNotes,
    @JsonKey(name: 'is_overdue') required this.isOverdue,
    @JsonKey(name: 'days_overdue') required this.daysOverdue,
    @JsonKey(name: 'is_active') required this.isActive,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student')
  final String studentId;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'student_code')
  final String studentCode;
  @override
  @JsonKey(name: 'group')
  final String? groupId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  final String amount;
  @override
  @JsonKey(name: 'amount_paid')
  final String amountPaid;
  @override
  @JsonKey(name: 'remaining_amount')
  final String remainingAmount;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  final String status;
  @override
  @JsonKey(name: 'due_date')
  final String dueDate;
  @override
  @JsonKey(name: 'payment_date')
  final String? paymentDate;
  @override
  @JsonKey(name: 'period_start')
  final String periodStart;
  @override
  @JsonKey(name: 'period_end')
  final String periodEnd;
  @override
  @JsonKey(name: 'reference_number')
  final String referenceNumber;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  @JsonKey(name: 'discount_amount')
  final String discountAmount;
  @override
  @JsonKey(name: 'discount_reason')
  final String? discountReason;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'internal_notes')
  final String? internalNotes;
  @override
  @JsonKey(name: 'is_overdue')
  final bool isOverdue;
  @override
  @JsonKey(name: 'days_overdue')
  final int daysOverdue;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'PaymentModel(id: $id, studentId: $studentId, studentName: $studentName, studentCode: $studentCode, groupId: $groupId, paymentType: $paymentType, amount: $amount, amountPaid: $amountPaid, remainingAmount: $remainingAmount, paymentMethod: $paymentMethod, status: $status, dueDate: $dueDate, paymentDate: $paymentDate, periodStart: $periodStart, periodEnd: $periodEnd, referenceNumber: $referenceNumber, transactionId: $transactionId, discountAmount: $discountAmount, discountReason: $discountReason, notes: $notes, internalNotes: $internalNotes, isOverdue: $isOverdue, daysOverdue: $daysOverdue, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountReason, discountReason) ||
                other.discountReason == discountReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.internalNotes, internalNotes) ||
                other.internalNotes == internalNotes) &&
            (identical(other.isOverdue, isOverdue) ||
                other.isOverdue == isOverdue) &&
            (identical(other.daysOverdue, daysOverdue) ||
                other.daysOverdue == daysOverdue) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    studentId,
    studentName,
    studentCode,
    groupId,
    paymentType,
    amount,
    amountPaid,
    remainingAmount,
    paymentMethod,
    status,
    dueDate,
    paymentDate,
    periodStart,
    periodEnd,
    referenceNumber,
    transactionId,
    discountAmount,
    discountReason,
    notes,
    internalNotes,
    isOverdue,
    daysOverdue,
    isActive,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(this);
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel({
    required final String id,
    @JsonKey(name: 'student') required final String studentId,
    @JsonKey(name: 'student_name') required final String studentName,
    @JsonKey(name: 'student_code') required final String studentCode,
    @JsonKey(name: 'group') final String? groupId,
    @JsonKey(name: 'payment_type') required final String paymentType,
    required final String amount,
    @JsonKey(name: 'amount_paid') required final String amountPaid,
    @JsonKey(name: 'remaining_amount') required final String remainingAmount,
    @JsonKey(name: 'payment_method') required final String paymentMethod,
    required final String status,
    @JsonKey(name: 'due_date') required final String dueDate,
    @JsonKey(name: 'payment_date') final String? paymentDate,
    @JsonKey(name: 'period_start') required final String periodStart,
    @JsonKey(name: 'period_end') required final String periodEnd,
    @JsonKey(name: 'reference_number') required final String referenceNumber,
    @JsonKey(name: 'transaction_id') final String? transactionId,
    @JsonKey(name: 'discount_amount') required final String discountAmount,
    @JsonKey(name: 'discount_reason') final String? discountReason,
    final String? notes,
    @JsonKey(name: 'internal_notes') final String? internalNotes,
    @JsonKey(name: 'is_overdue') required final bool isOverdue,
    @JsonKey(name: 'days_overdue') required final int daysOverdue,
    @JsonKey(name: 'is_active') required final bool isActive,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') required final String updatedAt,
  }) = _$PaymentModelImpl;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student')
  String get studentId;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'student_code')
  String get studentCode;
  @override
  @JsonKey(name: 'group')
  String? get groupId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  String get amount;
  @override
  @JsonKey(name: 'amount_paid')
  String get amountPaid;
  @override
  @JsonKey(name: 'remaining_amount')
  String get remainingAmount;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  String get status;
  @override
  @JsonKey(name: 'due_date')
  String get dueDate;
  @override
  @JsonKey(name: 'payment_date')
  String? get paymentDate;
  @override
  @JsonKey(name: 'period_start')
  String get periodStart;
  @override
  @JsonKey(name: 'period_end')
  String get periodEnd;
  @override
  @JsonKey(name: 'reference_number')
  String get referenceNumber;
  @override
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @override
  @JsonKey(name: 'discount_amount')
  String get discountAmount;
  @override
  @JsonKey(name: 'discount_reason')
  String? get discountReason;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'internal_notes')
  String? get internalNotes;
  @override
  @JsonKey(name: 'is_overdue')
  bool get isOverdue;
  @override
  @JsonKey(name: 'days_overdue')
  int get daysOverdue;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
