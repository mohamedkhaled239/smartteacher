import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String id;
  final String name;
  final String code;
  final String phone;
  final String subscriptionType;
  final String subscriptionStatus;
  final int remainingSessions;
  final String remainingAmount;
  final int groupsCount;
  final LastAttendance? lastAttendance;
  final String paymentStatus;
  final bool isActive;

  const Student({
    required this.id,
    required this.name,
    required this.code,
    required this.phone,
    required this.subscriptionType,
    required this.subscriptionStatus,
    required this.remainingSessions,
    required this.remainingAmount,
    required this.groupsCount,
    this.lastAttendance,
    required this.paymentStatus,
    required this.isActive,
  });

  @override
  List<Object?> get props => [
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
  ];
}

class LastAttendance extends Equatable {
  final String date;
  final String status;

  const LastAttendance({required this.date, required this.status});

  @override
  List<Object?> get props => [date, status];
}
