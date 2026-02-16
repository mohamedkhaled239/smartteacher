import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/payment.dart';
import '../repositories/payments_repository.dart';

class CreatePaymentUseCase {
  final PaymentsRepository repository;

  CreatePaymentUseCase(this.repository);

  Future<Either<Failure, Payment>> call({
    required String studentId,
    required String amount,
    required String paymentType,
    required String periodStart,
    required String periodEnd,
    required String dueDate,
  }) async {
    return await repository.createPayment(
      studentId: studentId,
      amount: amount,
      paymentType: paymentType,
      periodStart: periodStart,
      periodEnd: periodEnd,
      dueDate: dueDate,
    );
  }
}
