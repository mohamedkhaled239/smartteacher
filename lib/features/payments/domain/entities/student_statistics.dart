import 'package:equatable/equatable.dart';

class StudentStatistics extends Equatable {
  final int total;
  final int active;
  final int pending;
  final int suspended;
  final int monthlySubscriptions;
  final int perSessionSubscriptions;
  final int freeStudents;
  final double totalRemainingAmount;

  const StudentStatistics({
    required this.total,
    required this.active,
    required this.pending,
    required this.suspended,
    required this.monthlySubscriptions,
    required this.perSessionSubscriptions,
    required this.freeStudents,
    required this.totalRemainingAmount,
  });

  @override
  List<Object?> get props => [
    total,
    active,
    pending,
    suspended,
    monthlySubscriptions,
    perSessionSubscriptions,
    freeStudents,
    totalRemainingAmount,
  ];
}
