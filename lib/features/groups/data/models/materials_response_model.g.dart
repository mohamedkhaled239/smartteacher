// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materials_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaterialsResponseModelImpl _$$MaterialsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$MaterialsResponseModelImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => MaterialModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$MaterialsResponseModelImplToJson(
  _$MaterialsResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
