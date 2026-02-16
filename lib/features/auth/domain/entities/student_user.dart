import 'package:equatable/equatable.dart';

class StudentUser extends Equatable {
  final String id;
  final String username;
  final String email;
  final String userType;
  final String language;
  final String? centerName;
  final String studentCode;
  final bool isActive;
  final String createdAt;

  const StudentUser({
    required this.id,
    required this.username,
    required this.email,
    required this.userType,
    required this.language,
    this.centerName,
    required this.studentCode,
    required this.isActive,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    email,
    userType,
    language,
    centerName,
    studentCode,
    isActive,
    createdAt,
  ];
}
