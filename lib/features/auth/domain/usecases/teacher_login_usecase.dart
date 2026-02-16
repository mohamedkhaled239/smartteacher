import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/teacher_login_response.dart';
import '../repositories/auth_repository.dart';

class TeacherLoginUseCase {
  final AuthRepository repository;

  TeacherLoginUseCase(this.repository);

  Future<Either<Failure, TeacherLoginResponse>> call({
    required String pin,
    required Map<String, dynamic> deviceInfo,
  }) async {
    return await repository.teacherLogin(pin: pin, deviceInfo: deviceInfo);
  }
}
