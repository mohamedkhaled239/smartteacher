import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/group.dart';
import '../repositories/groups_repository.dart';

class CreateGroupUseCase {
  final GroupsRepository repository;

  CreateGroupUseCase(this.repository);

  Future<Either<Failure, Group>> call({
    required String name,
    required String subject,
    required String level,
    required int capacity,
  }) async {
    return await repository.createGroup(
      name: name,
      subject: subject,
      level: level,
      capacity: capacity,
    );
  }
}
