import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/payment.dart';
import '../entities/student.dart';
import '../entities/student_statistics.dart';

abstract class PaymentsRepository {
  Future<Either<Failure, List<Payment>>> getPayments();

  Future<Either<Failure, Payment>> createPayment({
    required String studentId,
    required String amount,
    required String paymentType,
    required String periodStart,
    required String periodEnd,
    required String dueDate,
  });

  Future<Either<Failure, List<Student>>> getStudents();

  Future<Either<Failure, StudentStatistics>> getStudentStatistics();
}
