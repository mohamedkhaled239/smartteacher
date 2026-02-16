import 'package:equatable/equatable.dart';
import '../../../domain/entities/teacher_login_response.dart';

abstract class TeacherLoginState extends Equatable {
  const TeacherLoginState();

  @override
  List<Object?> get props => [];
}

class TeacherLoginInitial extends TeacherLoginState {
  const TeacherLoginInitial();
}

class TeacherLoginLoading extends TeacherLoginState {
  const TeacherLoginLoading();
}

class TeacherLoginSuccess extends TeacherLoginState {
  final TeacherLoginResponse response;

  const TeacherLoginSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class TeacherLoginError extends TeacherLoginState {
  final String message;

  const TeacherLoginError(this.message);

  @override
  List<Object> get props => [message];
}
