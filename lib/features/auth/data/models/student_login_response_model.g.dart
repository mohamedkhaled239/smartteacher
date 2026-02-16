// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentLoginResponseModelImpl _$$StudentLoginResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$StudentLoginResponseModelImpl(
  access: json['access'] as String,
  refresh: json['refresh'] as String,
  user: StudentUserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$StudentLoginResponseModelImplToJson(
  _$StudentLoginResponseModelImpl instance,
) => <String, dynamic>{
  'access': instance.access,
  'refresh': instance.refresh,
  'user': instance.user,
};
