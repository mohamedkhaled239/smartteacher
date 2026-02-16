import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/groups_repository.dart';

class RemoveStudentFromGroupUseCase {
  final GroupsRepository repository;

  RemoveStudentFromGroupUseCase(this.repository);

  Future<Either<Failure, void>> call({
    required String groupId,
    required String studentId,
  }) async {
    return await repository.removeStudentFromGroup(
      groupId: groupId,
      studentId: studentId,
    );
  }
}
