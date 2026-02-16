// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentModelImpl _$$StudentModelImplFromJson(Map<String, dynamic> json) =>
    _$StudentModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      phone: json['phone'] as String,
      subscriptionType: json['subscription_type'] as String,
      subscriptionStatus: json['subscription_status'] as String,
      remainingSessions: (json['remaining_sessions'] as num).toInt(),
      remainingAmount: json['remaining_amount'] as String,
      groupsCount: (json['groups_count'] as num).toInt(),
      lastAttendance: json['last_attendance'] == null
          ? null
          : LastAttendanceModel.fromJson(
              json['last_attendance'] as Map<String, dynamic>,
            ),
      paymentStatus: json['payment_status'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$StudentModelImplToJson(_$StudentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'phone': instance.phone,
      'subscription_type': instance.subscriptionType,
      'subscription_status': instance.subscriptionStatus,
      'remaining_sessions': instance.remainingSessions,
      'remaining_amount': instance.remainingAmount,
      'groups_count': instance.groupsCount,
      'last_attendance': instance.lastAttendance,
      'payment_status': instance.paymentStatus,
      'is_active': instance.isActive,
    };

_$LastAttendanceModelImpl _$$LastAttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$LastAttendanceModelImpl(
  date: json['date'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$$LastAttendanceModelImplToJson(
  _$LastAttendanceModelImpl instance,
) => <String, dynamic>{'date': instance.date, 'status': instance.status};
