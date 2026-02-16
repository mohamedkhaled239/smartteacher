// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentUserModelImpl _$$StudentUserModelImplFromJson(
  Map<String, dynamic> json,
) => _$StudentUserModelImpl(
  id: json['id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  userType: json['userType'] as String,
  language: json['language'] as String,
  centerName: json['centerName'] as String?,
  studentCode: json['studentCode'] as String,
  isActive: json['isActive'] as bool,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$$StudentUserModelImplToJson(
  _$StudentUserModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'userType': instance.userType,
  'language': instance.language,
  'centerName': instance.centerName,
  'studentCode': instance.studentCode,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt,
};
