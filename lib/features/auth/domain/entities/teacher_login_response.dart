import 'package:equatable/equatable.dart';
import 'teacher_user.dart';

class TeacherLoginResponse extends Equatable {
  final String accessToken;
  final String refreshToken;
  final TeacherUser user;
  final String sessionToken;

  const TeacherLoginResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
    required this.sessionToken,
  });

  @override
  List<Object> get props => [accessToken, refreshToken, user, sessionToken];
}
