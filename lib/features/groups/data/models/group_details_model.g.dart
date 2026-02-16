// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupDetailsModelImpl _$$GroupDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$GroupDetailsModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  groupType: json['group_type'] as String,
  subject: json['subject'] as String,
  gradeLevel: json['grade_level'] as String?,
  maxStudents: (_readInt(json, 'max_students') as num).toInt(),
  currentStudentsCount: (_readInt(json, 'current_students_count') as num)
      .toInt(),
  monthlyPrice: _readString(json, 'monthly_price') as String,
  sessionPrice: _readString(json, 'session_price') as String,
  groupDiscount: _readString(json, 'group_discount') as String,
  sessionsPerMonth: (_readInt(json, 'sessions_per_month') as num).toInt(),
  sessionDurationMinutes: (_readInt(json, 'session_duration_minutes') as num)
      .toInt(),
  classroom: json['classroom'] as String?,
  onlineMeetingLink: json['online_meeting_link'] as String?,
  meetingPassword: json['meeting_password'] as String?,
  scheduleNotes: json['schedule_notes'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  students:
      (json['students'] as List<dynamic>?)
          ?.map((e) => StudentModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  statistics: GroupStatisticsModel.fromJson(
    json['statistics'] as Map<String, dynamic>,
  ),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$GroupDetailsModelImplToJson(
  _$GroupDetailsModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'group_type': instance.groupType,
  'subject': instance.subject,
  'grade_level': instance.gradeLevel,
  'max_students': instance.maxStudents,
  'current_students_count': instance.currentStudentsCount,
  'monthly_price': instance.monthlyPrice,
  'session_price': instance.sessionPrice,
  'group_discount': instance.groupDiscount,
  'sessions_per_month': instance.sessionsPerMonth,
  'session_duration_minutes': instance.sessionDurationMinutes,
  'classroom': instance.classroom,
  'online_meeting_link': instance.onlineMeetingLink,
  'meeting_password': instance.meetingPassword,
  'schedule_notes': instance.scheduleNotes,
  'is_active': instance.isActive,
  'students': instance.students,
  'statistics': instance.statistics,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_$GroupStatisticsModelImpl _$$GroupStatisticsModelImplFromJson(
  Map<String, dynamic> json,
) => _$GroupStatisticsModelImpl(
  monthlyAttendance: MonthlyAttendanceModel.fromJson(
    json['monthly_attendance'] as Map<String, dynamic>,
  ),
  monthlySessions: MonthlySessionsModel.fromJson(
    json['monthly_sessions'] as Map<String, dynamic>,
  ),
  monthlyRevenue: (json['monthly_revenue'] as num).toDouble(),
  attendanceRate: (json['attendance_rate'] as num).toDouble(),
);

Map<String, dynamic> _$$GroupStatisticsModelImplToJson(
  _$GroupStatisticsModelImpl instance,
) => <String, dynamic>{
  'monthly_attendance': instance.monthlyAttendance,
  'monthly_sessions': instance.monthlySessions,
  'monthly_revenue': instance.monthlyRevenue,
  'attendance_rate': instance.attendanceRate,
};

_$MonthlyAttendanceModelImpl _$$MonthlyAttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$MonthlyAttendanceModelImpl(
  total: (json['total'] as num).toInt(),
  present: (json['present'] as num).toInt(),
  late: (json['late'] as num).toInt(),
  absent: (json['absent'] as num).toInt(),
);

Map<String, dynamic> _$$MonthlyAttendanceModelImplToJson(
  _$MonthlyAttendanceModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'present': instance.present,
  'late': instance.late,
  'absent': instance.absent,
};

_$MonthlySessionsModelImpl _$$MonthlySessionsModelImplFromJson(
  Map<String, dynamic> json,
) => _$MonthlySessionsModelImpl(
  total: (json['total'] as num).toInt(),
  completed: (json['completed'] as num).toInt(),
  cancelled: (json['cancelled'] as num).toInt(),
);

Map<String, dynamic> _$$MonthlySessionsModelImplToJson(
  _$MonthlySessionsModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'completed': instance.completed,
  'cancelled': instance.cancelled,
};
