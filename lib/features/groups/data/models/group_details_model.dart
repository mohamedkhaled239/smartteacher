import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/group_details.dart';
import 'student_model.dart';

part 'group_details_model.freezed.dart';
part 'group_details_model.g.dart';

@freezed
class GroupDetailsModel with _$GroupDetailsModel {
  const factory GroupDetailsModel({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'group_type') required String groupType,
    required String subject,
    @JsonKey(name: 'grade_level') String? gradeLevel,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required int maxStudents,
    @JsonKey(name: 'current_students_count', readValue: _readInt)
    required int currentStudentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required String sessionPrice,
    @JsonKey(name: 'group_discount', readValue: _readString)
    required String groupDiscount,
    @JsonKey(name: 'sessions_per_month', readValue: _readInt)
    required int sessionsPerMonth,
    @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
    required int sessionDurationMinutes,
    String? classroom,
    @JsonKey(name: 'online_meeting_link') String? onlineMeetingLink,
    @JsonKey(name: 'meeting_password') String? meetingPassword,
    @JsonKey(name: 'schedule_notes') String? scheduleNotes,
    @JsonKey(name: 'is_active', defaultValue: true) required bool isActive,
    @JsonKey(name: 'students', defaultValue: [])
    required List<StudentModel> students,
    required GroupStatisticsModel statistics,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _GroupDetailsModel;

  factory GroupDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailsModelFromJson(json);
}

// Helpers
Object? _readString(Map<dynamic, dynamic> json, String key) {
  return json[key]?.toString() ?? '';
}

Object? _readInt(Map<dynamic, dynamic> json, String key) {
  final val = json[key];
  if (val is num) return val.toInt();
  if (val is String) return int.tryParse(val) ?? 0;
  return 0;
}

@freezed
class GroupStatisticsModel with _$GroupStatisticsModel {
  const factory GroupStatisticsModel({
    @JsonKey(name: 'monthly_attendance')
    required MonthlyAttendanceModel monthlyAttendance,
    @JsonKey(name: 'monthly_sessions')
    required MonthlySessionsModel monthlySessions,
    @JsonKey(name: 'monthly_revenue') required double monthlyRevenue,
    @JsonKey(name: 'attendance_rate') required double attendanceRate,
  }) = _GroupStatisticsModel;

  factory GroupStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$GroupStatisticsModelFromJson(json);
}

@freezed
class MonthlyAttendanceModel with _$MonthlyAttendanceModel {
  const factory MonthlyAttendanceModel({
    required int total,
    required int present,
    required int late,
    required int absent,
  }) = _MonthlyAttendanceModel;

  factory MonthlyAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyAttendanceModelFromJson(json);
}

@freezed
class MonthlySessionsModel with _$MonthlySessionsModel {
  const factory MonthlySessionsModel({
    required int total,
    required int completed,
    required int cancelled,
  }) = _MonthlySessionsModel;

  factory MonthlySessionsModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlySessionsModelFromJson(json);
}

extension GroupDetailsModelX on GroupDetailsModel {
  GroupDetails toEntity() {
    return GroupDetails(
      id: id,
      name: name,
      description: description,
      groupType: groupType,
      subject: subject,
      gradeLevel: gradeLevel,
      maxStudents: maxStudents,
      currentStudentsCount: currentStudentsCount,
      monthlyPrice: monthlyPrice,
      sessionPrice: sessionPrice,
      groupDiscount: groupDiscount,
      sessionsPerMonth: sessionsPerMonth,
      sessionDurationMinutes: sessionDurationMinutes,
      classroom: classroom,
      onlineMeetingLink: onlineMeetingLink,
      meetingPassword: meetingPassword,
      scheduleNotes: scheduleNotes,
      isActive: isActive,
      students: students.map((s) => s.toEntity()).toList(),
      statistics: statistics.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension GroupStatisticsModelX on GroupStatisticsModel {
  GroupStatistics toEntity() {
    return GroupStatistics(
      monthlyAttendance: monthlyAttendance.toEntity(),
      monthlySessions: monthlySessions.toEntity(),
      monthlyRevenue: monthlyRevenue,
      attendanceRate: attendanceRate,
    );
  }
}

extension MonthlyAttendanceModelX on MonthlyAttendanceModel {
  MonthlyAttendance toEntity() {
    return MonthlyAttendance(
      total: total,
      present: present,
      late: late,
      absent: absent,
    );
  }
}

extension MonthlySessionsModelX on MonthlySessionsModel {
  MonthlySessions toEntity() {
    return MonthlySessions(
      total: total,
      completed: completed,
      cancelled: cancelled,
    );
  }
}
