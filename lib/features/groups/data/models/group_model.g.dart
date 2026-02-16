// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupModelImpl _$$GroupModelImplFromJson(
  Map<String, dynamic> json,
) => _$GroupModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  groupType: json['group_type'] as String,
  subject: json['subject'] as String,
  maxStudents: (_readInt(json, 'max_students') as num).toInt(),
  studentsCount: (_readStudentsCount(json, 'students_count') as num).toInt(),
  monthlyPrice: _readString(json, 'monthly_price') as String,
  sessionPrice: _readString(json, 'session_price') as String,
  isActive: json['is_active'] as bool? ?? true,
  nextSessionDate: _readNextSessionDate(json, 'next_session_date') as String?,
);

Map<String, dynamic> _$$GroupModelImplToJson(_$GroupModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'group_type': instance.groupType,
      'subject': instance.subject,
      'max_students': instance.maxStudents,
      'students_count': instance.studentsCount,
      'monthly_price': instance.monthlyPrice,
      'session_price': instance.sessionPrice,
      'is_active': instance.isActive,
      'next_session_date': instance.nextSessionDate,
    };
