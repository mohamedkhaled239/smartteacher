import 'package:equatable/equatable.dart';
import 'student_user.dart';

class StudentLoginResponse extends Equatable {
  final String accessToken;
  final String refreshToken;
  final StudentUser user;

  const StudentLoginResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  @override
  List<Object> get props => [accessToken, refreshToken, user];
}
