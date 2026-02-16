// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsResponseModelImpl _$$GroupsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$GroupsResponseModelImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => GroupModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$GroupsResponseModelImplToJson(
  _$GroupsResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
