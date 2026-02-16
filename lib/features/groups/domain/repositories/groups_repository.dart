import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/group.dart';
import '../entities/group_details.dart';
import '../entities/material.dart';

abstract class GroupsRepository {
  Future<Either<Failure, List<Group>>> getGroups();

  Future<Either<Failure, GroupDetails>> getGroupDetails(String groupId);

  Future<Either<Failure, Group>> createGroup({
    required String name,
    required String subject,
    required String level,
    required int capacity,
  });

  Future<Either<Failure, void>> addStudentToGroup({
    required String groupId,
    required String studentId,
  });

  Future<Either<Failure, void>> removeStudentFromGroup({
    required String groupId,
    required String studentId,
  });

  Future<Either<Failure, List<GroupMaterial>>> getGroupMaterials(
    String groupId,
  );

  Future<Either<Failure, GroupMaterial>> createMaterial({
    required String groupId,
    required String title,
    required String materialType,
  });
}
