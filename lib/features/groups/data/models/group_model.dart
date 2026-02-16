import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/group.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
class GroupModel with _$GroupModel {
  const factory GroupModel({
    required String id,
    required String name,
    @JsonKey(name: 'group_type') required String groupType,
    required String subject,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required int maxStudents,
    @JsonKey(name: 'students_count', readValue: _readStudentsCount)
    required int studentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required String sessionPrice,
    @JsonKey(name: 'is_active', defaultValue: true) required bool isActive,
    @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
    String? nextSessionDate,
  }) = _GroupModel;

  factory GroupModel.fromJson(Map<String, dynamic> json) =>
      _$GroupModelFromJson(json);
}

// Helper functions for reading inconsistent keys and types
Object? _readStudentsCount(Map<dynamic, dynamic> json, String key) {
  return json['students_count'] ?? json['current_students_count'] ?? 0;
}

Object? _readNextSessionDate(Map<dynamic, dynamic> json, String key) {
  return json['next_session_date'] ?? json['next_session'];
}

Object? _readString(Map<dynamic, dynamic> json, String key) {
  return json[key]?.toString() ?? '';
}

Object? _readInt(Map<dynamic, dynamic> json, String key) {
  final val = json[key];
  if (val is num) return val.toInt(); // Handle double like 20.0
  if (val is String) return int.tryParse(val) ?? 0;
  return 0;
}

extension GroupModelX on GroupModel {
  Group toEntity() {
    return Group(
      id: id,
      name: name,
      groupType: groupType,
      subject: subject,
      maxStudents: maxStudents,
      studentsCount: studentsCount,
      monthlyPrice: monthlyPrice,
      sessionPrice: sessionPrice,
      isActive: isActive,
      nextSessionDate: nextSessionDate,
    );
  }
}
