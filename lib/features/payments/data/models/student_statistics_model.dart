import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/student_statistics.dart';

part 'student_statistics_model.freezed.dart';
part 'student_statistics_model.g.dart';

@freezed
class StudentStatisticsModel with _$StudentStatisticsModel {
  const factory StudentStatisticsModel({
    required int total,
    required int active,
    required int pending,
    required int suspended,
    @JsonKey(name: 'monthly_subscriptions') required int monthlySubscriptions,
    @JsonKey(name: 'per_session_subscriptions')
    required int perSessionSubscriptions,
    @JsonKey(name: 'free_students') required int freeStudents,
    @JsonKey(name: 'total_remaining_amount')
    required double totalRemainingAmount,
  }) = _StudentStatisticsModel;

  factory StudentStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StudentStatisticsModelFromJson(json);
}

extension StudentStatisticsModelX on StudentStatisticsModel {
  StudentStatistics toEntity() {
    return StudentStatistics(
      total: total,
      active: active,
      pending: pending,
      suspended: suspended,
      monthlySubscriptions: monthlySubscriptions,
      perSessionSubscriptions: perSessionSubscriptions,
      freeStudents: freeStudents,
      totalRemainingAmount: totalRemainingAmount,
    );
  }
}
