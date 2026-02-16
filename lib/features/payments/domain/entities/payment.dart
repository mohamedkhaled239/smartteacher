import 'package:equatable/equatable.dart';

class Payment extends Equatable {
  final String id;
  final String studentId;
  final String studentName;
  final String studentCode;
  final String? groupId;
  final String paymentType;
  final String amount;
  final String amountPaid;
  final String remainingAmount;
  final String paymentMethod;
  final String status;
  final String dueDate;
  final String? paymentDate;
  final String periodStart;
  final String periodEnd;
  final String referenceNumber;
  final String? transactionId;
  final String discountAmount;
  final String? discountReason;
  final String? notes;
  final String? internalNotes;
  final bool isOverdue;
  final int daysOverdue;
  final bool isActive;
  final String createdAt;
  final String updatedAt;

  const Payment({
    required this.id,
    required this.studentId,
    required this.studentName,
    required this.studentCode,
    this.groupId,
    required this.paymentType,
    required this.amount,
    required this.amountPaid,
    required this.remainingAmount,
    required this.paymentMethod,
    required this.status,
    required this.dueDate,
    this.paymentDate,
    required this.periodStart,
    required this.periodEnd,
    required this.referenceNumber,
    this.transactionId,
    required this.discountAmount,
    this.discountReason,
    this.notes,
    this.internalNotes,
    required this.isOverdue,
    required this.daysOverdue,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
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
  ];
}
