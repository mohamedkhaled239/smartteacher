import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/add_student_to_group_usecase.dart';
import '../../domain/usecases/create_group_usecase.dart';
import '../../domain/usecases/get_group_details_usecase.dart';
import '../../domain/usecases/get_groups_usecase.dart';
import '../../domain/usecases/remove_student_from_group_usecase.dart';
import '../../domain/usecases/get_group_materials_usecase.dart';
import '../../domain/usecases/create_material_usecase.dart';
import 'groups_event.dart';
import 'groups_state.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final GetGroupsUseCase getGroupsUseCase;
  final GetGroupDetailsUseCase getGroupDetailsUseCase;
  final CreateGroupUseCase createGroupUseCase;
  final AddStudentToGroupUseCase addStudentToGroupUseCase;
  final RemoveStudentFromGroupUseCase removeStudentFromGroupUseCase;
  final GetGroupMaterialsUseCase getGroupMaterialsUseCase;
  final CreateMaterialUseCase createMaterialUseCase;

  GroupsBloc({
    required this.getGroupsUseCase,
    required this.getGroupDetailsUseCase,
    required this.createGroupUseCase,
    required this.addStudentToGroupUseCase,
    required this.removeStudentFromGroupUseCase,
    required this.getGroupMaterialsUseCase,
    required this.createMaterialUseCase,
  }) : super(const GroupsInitial()) {
    on<LoadGroupsEvent>(_onLoadGroups);
    on<LoadGroupDetailsEvent>(_onLoadGroupDetails);
    on<CreateGroupEvent>(_onCreateGroup);
    on<AddStudentToGroupEvent>(_onAddStudentToGroup);
    on<RemoveStudentFromGroupEvent>(_onRemoveStudentFromGroup);
    on<LoadGroupMaterialsEvent>(_onLoadGroupMaterials);
    on<CreateGroupMaterialEvent>(_onCreateGroupMaterial);
  }

  Future<void> _onLoadGroups(
    LoadGroupsEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const GroupsLoading());

    final result = await getGroupsUseCase();

    result.fold(
      (failure) {
        log('Failed to load groups: ${failure.message}');
        emit(GroupsError(failure.message));
      },
      (groups) {
        log('Groups loaded successfully: ${groups.length} groups');
        emit(GroupsLoaded(groups));
      },
    );
  }

  Future<void> _onLoadGroupDetails(
    LoadGroupDetailsEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const GroupDetailsLoading());

    final result = await getGroupDetailsUseCase(event.groupId);

    result.fold(
      (failure) {
        log('Failed to load group details: ${failure.message}');
        emit(GroupDetailsError(failure.message));
      },
      (groupDetails) {
        log('Group details loaded successfully');
        emit(GroupDetailsLoaded(groupDetails));
      },
    );
  }

  Future<void> _onCreateGroup(
    CreateGroupEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const CreatingGroup());

    final result = await createGroupUseCase(
      name: event.name,
      subject: event.subject,
      level: event.level,
      capacity: event.capacity,
    );

    result.fold(
      (failure) {
        log('Failed to create group: ${failure.message}');
        emit(GroupCreateError(failure.message));
      },
      (group) {
        log('Group created successfully');
        emit(GroupCreated(group));
      },
    );
  }

  Future<void> _onAddStudentToGroup(
    AddStudentToGroupEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const StudentOperationLoading());

    final result = await addStudentToGroupUseCase(
      groupId: event.groupId,
      studentId: event.studentId,
    );

    result.fold(
      (failure) {
        log('Failed to add student to group: ${failure.message}');
        emit(StudentOperationError(failure.message));
      },
      (_) {
        log('Student added to group successfully');
        emit(const StudentOperationSuccess('تمت إضافة الطالب بنجاح'));
      },
    );
  }

  Future<void> _onRemoveStudentFromGroup(
    RemoveStudentFromGroupEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const StudentOperationLoading());

    final result = await removeStudentFromGroupUseCase(
      groupId: event.groupId,
      studentId: event.studentId,
    );

    result.fold(
      (failure) {
        log('Failed to remove student from group: ${failure.message}');
        emit(StudentOperationError(failure.message));
      },
      (_) {
        log('Student removed from group successfully');
        emit(const StudentOperationSuccess('تمت إزالة الطالب بنجاح'));
      },
    );
  }

  Future<void> _onLoadGroupMaterials(
    LoadGroupMaterialsEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const MaterialsLoading());

    final result = await getGroupMaterialsUseCase(event.groupId);

    result.fold(
      (failure) {
        log('Failed to load group materials: ${failure.message}');
        emit(MaterialsError(failure.message));
      },
      (materials) {
        log('Group materials loaded successfully');
        emit(MaterialsLoaded(materials));
      },
    );
  }

  Future<void> _onCreateGroupMaterial(
    CreateGroupMaterialEvent event,
    Emitter<GroupsState> emit,
  ) async {
    emit(const MaterialOperationLoading());

    final result = await createMaterialUseCase(
      groupId: event.groupId,
      title: event.title,
      materialType: event.materialType,
    );

    result.fold(
      (failure) {
        log('Failed to create material: ${failure.message}');
        emit(MaterialOperationError(failure.message));
      },
      (material) {
        log('Material created successfully');
        emit(MaterialOperationSuccess('تم إنشاء المادة بنجاح', material));
      },
    );
  }
}
