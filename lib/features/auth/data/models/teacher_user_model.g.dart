// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherUserModelImpl _$$TeacherUserModelImplFromJson(
  Map<String, dynamic> json,
) => _$TeacherUserModelImpl(
  id: json['id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  centerName: json['center_name'] as String?,
  language: json['language'] as String,
  activeStudentsCount: (json['active_students_count'] as num).toInt(),
  activeGroupsCount: (json['active_groups_count'] as num).toInt(),
  lastActivity: json['last_activity'] as String,
);

Map<String, dynamic> _$$TeacherUserModelImplToJson(
  _$TeacherUserModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'center_name': instance.centerName,
  'language': instance.language,
  'active_students_count': instance.activeStudentsCount,
  'active_groups_count': instance.activeGroupsCount,
  'last_activity': instance.lastActivity,
};
