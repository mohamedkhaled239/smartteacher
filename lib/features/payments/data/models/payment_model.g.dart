// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      id: json['id'] as String,
      studentId: json['student'] as String,
      studentName: json['student_name'] as String,
      studentCode: json['student_code'] as String,
      groupId: json['group'] as String?,
      paymentType: json['payment_type'] as String,
      amount: json['amount'] as String,
      amountPaid: json['amount_paid'] as String,
      remainingAmount: json['remaining_amount'] as String,
      paymentMethod: json['payment_method'] as String,
      status: json['status'] as String,
      dueDate: json['due_date'] as String,
      paymentDate: json['payment_date'] as String?,
      periodStart: json['period_start'] as String,
      periodEnd: json['period_end'] as String,
      referenceNumber: json['reference_number'] as String,
      transactionId: json['transaction_id'] as String?,
      discountAmount: json['discount_amount'] as String,
      discountReason: json['discount_reason'] as String?,
      notes: json['notes'] as String?,
      internalNotes: json['internal_notes'] as String?,
      isOverdue: json['is_overdue'] as bool,
      daysOverdue: (json['days_overdue'] as num).toInt(),
      isActive: json['is_active'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.studentId,
      'student_name': instance.studentName,
      'student_code': instance.studentCode,
      'group': instance.groupId,
      'payment_type': instance.paymentType,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'remaining_amount': instance.remainingAmount,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'due_date': instance.dueDate,
      'payment_date': instance.paymentDate,
      'period_start': instance.periodStart,
      'period_end': instance.periodEnd,
      'reference_number': instance.referenceNumber,
      'transaction_id': instance.transactionId,
      'discount_amount': instance.discountAmount,
      'discount_reason': instance.discountReason,
      'notes': instance.notes,
      'internal_notes': instance.internalNotes,
      'is_overdue': instance.isOverdue,
      'days_overdue': instance.daysOverdue,
      'is_active': instance.isActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
