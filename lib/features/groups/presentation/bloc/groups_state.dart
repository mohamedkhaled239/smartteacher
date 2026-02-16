import 'package:equatable/equatable.dart';
import '../../domain/entities/group.dart';
import '../../domain/entities/group_details.dart';
import '../../domain/entities/material.dart';

abstract class GroupsState extends Equatable {
  const GroupsState();

  @override
  List<Object?> get props => [];
}

class GroupsInitial extends GroupsState {
  const GroupsInitial();
}

class GroupsLoading extends GroupsState {
  const GroupsLoading();
}

class GroupsLoaded extends GroupsState {
  final List<Group> groups;

  const GroupsLoaded(this.groups);

  @override
  List<Object?> get props => [groups];
}

class GroupsError extends GroupsState {
  final String message;

  const GroupsError(this.message);

  @override
  List<Object?> get props => [message];
}

class GroupDetailsLoading extends GroupsState {
  const GroupDetailsLoading();
}

class GroupDetailsLoaded extends GroupsState {
  final GroupDetails groupDetails;

  const GroupDetailsLoaded(this.groupDetails);

  @override
  List<Object?> get props => [groupDetails];
}

class GroupDetailsError extends GroupsState {
  final String message;

  const GroupDetailsError(this.message);

  @override
  List<Object?> get props => [message];
}

class CreatingGroup extends GroupsState {
  const CreatingGroup();
}

class GroupCreated extends GroupsState {
  final Group group;

  const GroupCreated(this.group);

  @override
  List<Object?> get props => [group];
}

class GroupCreateError extends GroupsState {
  final String message;

  const GroupCreateError(this.message);

  @override
  List<Object?> get props => [message];
}

class StudentOperationLoading extends GroupsState {
  const StudentOperationLoading();
}

class StudentOperationSuccess extends GroupsState {
  final String message;

  const StudentOperationSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class StudentOperationError extends GroupsState {
  final String message;

  const StudentOperationError(this.message);

  @override
  List<Object?> get props => [message];
}

class MaterialsLoading extends GroupsState {
  const MaterialsLoading();
}

class MaterialsLoaded extends GroupsState {
  final List<GroupMaterial> materials;

  const MaterialsLoaded(this.materials);

  @override
  List<Object?> get props => [materials];
}

class MaterialsError extends GroupsState {
  final String message;

  const MaterialsError(this.message);

  @override
  List<Object?> get props => [message];
}

class MaterialOperationLoading extends GroupsState {
  const MaterialOperationLoading();
}

class MaterialOperationSuccess extends GroupsState {
  final String message;
  final GroupMaterial? material;

  const MaterialOperationSuccess(this.message, [this.material]);

  @override
  List<Object?> get props => [message, material];
}

class MaterialOperationError extends GroupsState {
  final String message;

  const MaterialOperationError(this.message);

  @override
  List<Object?> get props => [message];
}
