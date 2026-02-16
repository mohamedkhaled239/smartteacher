import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/material.dart';
import '../repositories/groups_repository.dart';

class GetGroupMaterialsUseCase {
  final GroupsRepository repository;

  GetGroupMaterialsUseCase(this.repository);

  Future<Either<Failure, List<GroupMaterial>>> call(String groupId) async {
    return await repository.getGroupMaterials(groupId);
  }
}
