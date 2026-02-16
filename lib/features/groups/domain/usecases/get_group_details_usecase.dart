import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/group_details.dart';
import '../repositories/groups_repository.dart';

class GetGroupDetailsUseCase {
  final GroupsRepository repository;

  GetGroupDetailsUseCase(this.repository);

  Future<Either<Failure, GroupDetails>> call(String groupId) async {
    return await repository.getGroupDetails(groupId);
  }
}
