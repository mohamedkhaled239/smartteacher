import 'package:equatable/equatable.dart';

abstract class PaymentsEvent extends Equatable {
  const PaymentsEvent();

  @override
  List<Object?> get props => [];
}

class LoadPaymentsEvent extends PaymentsEvent {
  const LoadPaymentsEvent();
}

class LoadStudentsEvent extends PaymentsEvent {
  const LoadStudentsEvent();
}

class LoadStudentStatisticsEvent extends PaymentsEvent {
  const LoadStudentStatisticsEvent();
}

class CreatePaymentEvent extends PaymentsEvent {
  final String studentId;
  final String amount;
  final String paymentType;
  final String periodStart;
  final String periodEnd;
  final String dueDate;

  const CreatePaymentEvent({
    required this.studentId,
    required this.amount,
    required this.paymentType,
    required this.periodStart,
    required this.periodEnd,
    required this.dueDate,
  });

  @override
  List<Object?> get props => [
    studentId,
    amount,
    paymentType,
    periodStart,
    periodEnd,
    dueDate,
  ];
}
