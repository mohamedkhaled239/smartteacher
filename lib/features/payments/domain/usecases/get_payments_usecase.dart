import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/payment.dart';
import '../repositories/payments_repository.dart';

class GetPaymentsUseCase {
  final PaymentsRepository repository;

  GetPaymentsUseCase(this.repository);

  Future<Either<Failure, List<Payment>>> call() async {
    return await repository.getPayments();
  }
}
