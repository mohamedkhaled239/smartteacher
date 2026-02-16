import 'package:equatable/equatable.dart';
import '../../../domain/entities/student_login_response.dart';

abstract class StudentLoginState extends Equatable {
  const StudentLoginState();

  @override
  List<Object?> get props => [];
}

class StudentLoginInitial extends StudentLoginState {
  const StudentLoginInitial();
}

class StudentLoginLoading extends StudentLoginState {
  const StudentLoginLoading();
}

class StudentLoginSuccess extends StudentLoginState {
  final StudentLoginResponse response;

  const StudentLoginSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class StudentLoginError extends StudentLoginState {
  final String message;

  const StudentLoginError(this.message);

  @override
  List<Object> get props => [message];
}
