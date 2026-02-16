// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentsResponseModelImpl _$$StudentsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$StudentsResponseModelImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => StudentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$StudentsResponseModelImplToJson(
  _$StudentsResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
