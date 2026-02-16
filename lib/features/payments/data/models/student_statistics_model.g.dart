// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentStatisticsModelImpl _$$StudentStatisticsModelImplFromJson(
  Map<String, dynamic> json,
) => _$StudentStatisticsModelImpl(
  total: (json['total'] as num).toInt(),
  active: (json['active'] as num).toInt(),
  pending: (json['pending'] as num).toInt(),
  suspended: (json['suspended'] as num).toInt(),
  monthlySubscriptions: (json['monthly_subscriptions'] as num).toInt(),
  perSessionSubscriptions: (json['per_session_subscriptions'] as num).toInt(),
  freeStudents: (json['free_students'] as num).toInt(),
  totalRemainingAmount: (json['total_remaining_amount'] as num).toDouble(),
);

Map<String, dynamic> _$$StudentStatisticsModelImplToJson(
  _$StudentStatisticsModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'active': instance.active,
  'pending': instance.pending,
  'suspended': instance.suspended,
  'monthly_subscriptions': instance.monthlySubscriptions,
  'per_session_subscriptions': instance.perSessionSubscriptions,
  'free_students': instance.freeStudents,
  'total_remaining_amount': instance.totalRemainingAmount,
};
