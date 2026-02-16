import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/payment.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    @JsonKey(name: 'student') required String studentId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'student_code') required String studentCode,
    @JsonKey(name: 'group') String? groupId,
    @JsonKey(name: 'payment_type') required String paymentType,
    required String amount,
    @JsonKey(name: 'amount_paid') required String amountPaid,
    @JsonKey(name: 'remaining_amount') required String remainingAmount,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    required String status,
    @JsonKey(name: 'due_date') required String dueDate,
    @JsonKey(name: 'payment_date') String? paymentDate,
    @JsonKey(name: 'period_start') required String periodStart,
    @JsonKey(name: 'period_end') required String periodEnd,
    @JsonKey(name: 'reference_number') required String referenceNumber,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'discount_amount') required String discountAmount,
    @JsonKey(name: 'discount_reason') String? discountReason,
    String? notes,
    @JsonKey(name: 'internal_notes') String? internalNotes,
    @JsonKey(name: 'is_overdue') required bool isOverdue,
    @JsonKey(name: 'days_overdue') required int daysOverdue,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}

extension PaymentModelX on PaymentModel {
  Payment toEntity() {
    return Payment(
      id: id,
      studentId: studentId,
      studentName: studentName,
      studentCode: studentCode,
      groupId: groupId,
      paymentType: paymentType,
      amount: amount,
      amountPaid: amountPaid,
      remainingAmount: remainingAmount,
      paymentMethod: paymentMethod,
      status: status,
      dueDate: dueDate,
      paymentDate: paymentDate,
      periodStart: periodStart,
      periodEnd: periodEnd,
      referenceNumber: referenceNumber,
      transactionId: transactionId,
      discountAmount: discountAmount,
      discountReason: discountReason,
      notes: notes,
      internalNotes: internalNotes,
      isOverdue: isOverdue,
      daysOverdue: daysOverdue,
      isActive: isActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
