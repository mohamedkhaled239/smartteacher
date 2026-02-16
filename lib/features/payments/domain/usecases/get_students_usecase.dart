import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/student.dart';
import '../repositories/payments_repository.dart';

class GetStudentsUseCase {
  final PaymentsRepository repository;

  GetStudentsUseCase(this.repository);

  Future<Either<Failure, List<Student>>> call() async {
    return await repository.getStudents();
  }
}
