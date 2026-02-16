import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/material.dart';
import '../repositories/groups_repository.dart';

class CreateMaterialUseCase {
  final GroupsRepository repository;

  CreateMaterialUseCase(this.repository);

  Future<Either<Failure, GroupMaterial>> call({
    required String groupId,
    required String title,
    required String materialType,
  }) async {
    return await repository.createMaterial(
      groupId: groupId,
      title: title,
      materialType: materialType,
    );
  }
}
