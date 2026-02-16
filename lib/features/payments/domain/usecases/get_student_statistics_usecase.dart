import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/student_statistics.dart';
import '../repositories/payments_repository.dart';

class GetStudentStatisticsUseCase {
  final PaymentsRepository repository;

  GetStudentStatisticsUseCase(this.repository);

  Future<Either<Failure, StudentStatistics>> call() async {
    return await repository.getStudentStatistics();
  }
}
