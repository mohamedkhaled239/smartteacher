import 'package:equatable/equatable.dart';
import 'student.dart';

class GroupDetails extends Equatable {
  final String id;
  final String name;
  final String? description;
  final String groupType;
  final String subject;
  final String? gradeLevel;
  final int maxStudents;
  final int currentStudentsCount;
  final String monthlyPrice;
  final String sessionPrice;
  final String groupDiscount;
  final int sessionsPerMonth;
  final int sessionDurationMinutes;
  final String? classroom;
  final String? onlineMeetingLink;
  final String? meetingPassword;
  final String? scheduleNotes;
  final bool isActive;
  final List<Student> students;
  final GroupStatistics statistics;
  final DateTime createdAt;
  final DateTime updatedAt;

  const GroupDetails({
    required this.id,
    required this.name,
    this.description,
    required this.groupType,
    required this.subject,
    this.gradeLevel,
    required this.maxStudents,
    required this.currentStudentsCount,
    required this.monthlyPrice,
    required this.sessionPrice,
    required this.groupDiscount,
    required this.sessionsPerMonth,
    required this.sessionDurationMinutes,
    this.classroom,
    this.onlineMeetingLink,
    this.meetingPassword,
    this.scheduleNotes,
    required this.isActive,
    required this.students,
    required this.statistics,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    groupType,
    subject,
    gradeLevel,
    maxStudents,
    currentStudentsCount,
    monthlyPrice,
    sessionPrice,
    groupDiscount,
    sessionsPerMonth,
    sessionDurationMinutes,
    classroom,
    onlineMeetingLink,
    meetingPassword,
    scheduleNotes,
    isActive,
    students,
    statistics,
    createdAt,
    updatedAt,
  ];
}

class GroupStatistics extends Equatable {
  final MonthlyAttendance monthlyAttendance;
  final MonthlySessions monthlySessions;
  final double monthlyRevenue;
  final double attendanceRate;

  const GroupStatistics({
    required this.monthlyAttendance,
    required this.monthlySessions,
    required this.monthlyRevenue,
    required this.attendanceRate,
  });

  @override
  List<Object> get props => [
    monthlyAttendance,
    monthlySessions,
    monthlyRevenue,
    attendanceRate,
  ];
}

class MonthlyAttendance extends Equatable {
  final int total;
  final int present;
  final int late;
  final int absent;

  const MonthlyAttendance({
    required this.total,
    required this.present,
    required this.late,
    required this.absent,
  });

  @override
  List<Object> get props => [total, present, late, absent];
}

class MonthlySessions extends Equatable {
  final int total;
  final int completed;
  final int cancelled;

  const MonthlySessions({
    required this.total,
    required this.completed,
    required this.cancelled,
  });

  @override
  List<Object> get props => [total, completed, cancelled];
}
