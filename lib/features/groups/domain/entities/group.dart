import 'package:equatable/equatable.dart';

class Group extends Equatable {
  final String id;
  final String name;
  final String groupType;
  final String subject;
  final int maxStudents;
  final int studentsCount;
  final String monthlyPrice;
  final String sessionPrice;
  final bool isActive;
  final String? nextSessionDate;

  const Group({
    required this.id,
    required this.name,
    required this.groupType,
    required this.subject,
    required this.maxStudents,
    required this.studentsCount,
    required this.monthlyPrice,
    required this.sessionPrice,
    required this.isActive,
    this.nextSessionDate,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    groupType,
    subject,
    maxStudents,
    studentsCount,
    monthlyPrice,
    sessionPrice,
    isActive,
    nextSessionDate,
  ];
}
