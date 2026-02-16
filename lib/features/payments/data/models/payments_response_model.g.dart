// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentsResponseModelImpl _$$PaymentsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentsResponseModelImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PaymentsResponseModelImplToJson(
  _$PaymentsResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
