import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/student.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
class StudentModel with _$StudentModel {
  const factory StudentModel({
    required String id,
    required String name,
    required String code,
    required String phone,
    @JsonKey(name: 'subscription_type') required String subscriptionType,
    @JsonKey(name: 'subscription_status') required String subscriptionStatus,
    @JsonKey(name: 'remaining_sessions') required int remainingSessions,
    @JsonKey(name: 'remaining_amount') required String remainingAmount,
    @JsonKey(name: 'groups_count') required int groupsCount,
    @JsonKey(name: 'last_attendance') LastAttendanceModel? lastAttendance,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}

@freezed
class LastAttendanceModel with _$LastAttendanceModel {
  const factory LastAttendanceModel({
    required String date,
    required String status,
  }) = _LastAttendanceModel;

  factory LastAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$LastAttendanceModelFromJson(json);
}

extension StudentModelX on StudentModel {
  Student toEntity() {
    return Student(
      id: id,
      name: name,
      code: code,
      phone: phone,
      subscriptionType: subscriptionType,
      subscriptionStatus: subscriptionStatus,
      remainingSessions: remainingSessions,
      remainingAmount: remainingAmount,
      groupsCount: groupsCount,
      lastAttendance: lastAttendance != null
          ? LastAttendance(
              date: lastAttendance!.date,
              status: lastAttendance!.status,
            )
          : null,
      paymentStatus: paymentStatus,
      isActive: isActive,
    );
  }
}
