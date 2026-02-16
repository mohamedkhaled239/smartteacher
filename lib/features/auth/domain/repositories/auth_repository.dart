import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/teacher_login_response.dart';
import '../entities/student_login_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, TeacherLoginResponse>> teacherLogin({
    required String pin,
    required Map<String, dynamic> deviceInfo,
  });

  Future<Either<Failure, StudentLoginResponse>> studentLogin({
    required String studentCode,
  });

  Future<Either<Failure, void>> logout();

  Future<bool> isLoggedIn();

  Future<String?> getUserType();
}
