// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherLoginResponseModelImpl _$$TeacherLoginResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$TeacherLoginResponseModelImpl(
  access: json['access'] as String,
  refresh: json['refresh'] as String,
  user: TeacherUserModel.fromJson(json['user'] as Map<String, dynamic>),
  sessionToken: json['session_token'] as String,
);

Map<String, dynamic> _$$TeacherLoginResponseModelImplToJson(
  _$TeacherLoginResponseModelImpl instance,
) => <String, dynamic>{
  'access': instance.access,
  'refresh': instance.refresh,
  'user': instance.user,
  'session_token': instance.sessionToken,
};
