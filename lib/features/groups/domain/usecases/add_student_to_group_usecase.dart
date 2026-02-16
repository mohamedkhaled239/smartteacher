import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/groups_repository.dart';

class AddStudentToGroupUseCase {
  final GroupsRepository repository;

  AddStudentToGroupUseCase(this.repository);

  Future<Either<Failure, void>> call({
    required String groupId,
    required String studentId,
  }) async {
    return await repository.addStudentToGroup(
      groupId: groupId,
      studentId: studentId,
    );
  }
}
