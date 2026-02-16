import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/student_login_response.dart';
import '../repositories/auth_repository.dart';

class StudentLoginUseCase {
  final AuthRepository repository;

  StudentLoginUseCase(this.repository);

  Future<Either<Failure, StudentLoginResponse>> call({
    required String studentCode,
  }) async {
    return await repository.studentLogin(studentCode: studentCode);
  }
}
