import 'package:equatable/equatable.dart';

class TeacherUser extends Equatable {
  final String id;
  final String username;
  final String email;
  final String? centerName;
  final String language;
  final int activeStudentsCount;
  final int activeGroupsCount;
  final String lastActivity;

  const TeacherUser({
    required this.id,
    required this.username,
    required this.email,
    this.centerName,
    required this.language,
    required this.activeStudentsCount,
    required this.activeGroupsCount,
    required this.lastActivity,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    email,
    centerName,
    language,
    activeStudentsCount,
    activeGroupsCount,
    lastActivity,
  ];
}
