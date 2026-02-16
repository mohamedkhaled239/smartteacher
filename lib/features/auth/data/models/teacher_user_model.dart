import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/teacher_user.dart';

part 'teacher_user_model.freezed.dart';
part 'teacher_user_model.g.dart';

@freezed
class TeacherUserModel with _$TeacherUserModel {
  const factory TeacherUserModel({
    required String id,
    required String username,
    required String email,
    @JsonKey(name: 'center_name') String? centerName,
    required String language,
    @JsonKey(name: 'active_students_count') required int activeStudentsCount,
    @JsonKey(name: 'active_groups_count') required int activeGroupsCount,
    @JsonKey(name: 'last_activity') required String lastActivity,
  }) = _TeacherUserModel;

  factory TeacherUserModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherUserModelFromJson(json);
}

extension TeacherUserModelX on TeacherUserModel {
  TeacherUser toEntity() {
    return TeacherUser(
      id: id,
      username: username,
      email: email,
      centerName: centerName,
      language: language,
      activeStudentsCount: activeStudentsCount,
      activeGroupsCount: activeGroupsCount,
      lastActivity: lastActivity,
    );
  }
}
