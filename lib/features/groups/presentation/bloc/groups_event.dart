import 'package:equatable/equatable.dart';

abstract class GroupsEvent extends Equatable {
  const GroupsEvent();

  @override
  List<Object?> get props => [];
}

class LoadGroupsEvent extends GroupsEvent {
  const LoadGroupsEvent();
}

class CreateGroupEvent extends GroupsEvent {
  final String name;
  final String subject;
  final String level;
  final int capacity;

  const CreateGroupEvent({
    required this.name,
    required this.subject,
    required this.level,
    required this.capacity,
  });

  @override
  List<Object?> get props => [name, subject, level, capacity];
}

class LoadGroupDetailsEvent extends GroupsEvent {
  final String groupId;

  const LoadGroupDetailsEvent(this.groupId);

  @override
  List<Object?> get props => [groupId];
}

class AddStudentToGroupEvent extends GroupsEvent {
  final String groupId;
  final String studentId;

  const AddStudentToGroupEvent({
    required this.groupId,
    required this.studentId,
  });

  @override
  List<Object?> get props => [groupId, studentId];
}

class RemoveStudentFromGroupEvent extends GroupsEvent {
  final String groupId;
  final String studentId;

  const RemoveStudentFromGroupEvent({
    required this.groupId,
    required this.studentId,
  });

  @override
  List<Object?> get props => [groupId, studentId];
}

class LoadGroupMaterialsEvent extends GroupsEvent {
  final String groupId;

  const LoadGroupMaterialsEvent(this.groupId);

  @override
  List<Object?> get props => [groupId];
}

class CreateGroupMaterialEvent extends GroupsEvent {
  final String groupId;
  final String title;
  final String materialType;

  const CreateGroupMaterialEvent({
    required this.groupId,
    required this.title,
    required this.materialType,
  });

  @override
  List<Object?> get props => [groupId, title, materialType];
}
