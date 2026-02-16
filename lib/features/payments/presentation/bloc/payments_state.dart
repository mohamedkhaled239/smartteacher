import 'package:equatable/equatable.dart';
import '../../domain/entities/payment.dart';
import '../../domain/entities/student.dart';
import '../../domain/entities/student_statistics.dart';

enum PaymentsStatus { initial, loading, success, failure }

class PaymentsState extends Equatable {
  final PaymentsStatus status;
  final PaymentsStatus statisticsStatus;
  final PaymentsStatus studentsStatus;
  final PaymentsStatus operationStatus;

  final List<Payment> payments;
  final List<Student> students;
  final StudentStatistics? statistics;
  final String? errorMessage;
  final String? operationMessage;

  const PaymentsState({
    this.status = PaymentsStatus.initial,
    this.statisticsStatus = PaymentsStatus.initial,
    this.studentsStatus = PaymentsStatus.initial,
    this.operationStatus = PaymentsStatus.initial,
    this.payments = const [],
    this.students = const [],
    this.statistics,
    this.errorMessage,
    this.operationMessage,
  });

  PaymentsState copyWith({
    PaymentsStatus? status,
    PaymentsStatus? statisticsStatus,
    PaymentsStatus? studentsStatus,
    PaymentsStatus? operationStatus,
    List<Payment>? payments,
    List<Student>? students,
    StudentStatistics? statistics,
    String? errorMessage,
    String? operationMessage,
  }) {
    return PaymentsState(
      status: status ?? this.status,
      statisticsStatus: statisticsStatus ?? this.statisticsStatus,
      studentsStatus: studentsStatus ?? this.studentsStatus,
      operationStatus: operationStatus ?? this.operationStatus,
      payments: payments ?? this.payments,
      students: students ?? this.students,
      statistics: statistics ?? this.statistics,
      errorMessage: errorMessage ?? this.errorMessage,
      operationMessage: operationMessage ?? this.operationMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    statisticsStatus,
    studentsStatus,
    operationStatus,
    payments,
    students,
    statistics,
    errorMessage,
    operationMessage,
  ];
}
