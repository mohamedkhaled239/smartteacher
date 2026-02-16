import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/student_user.dart';

part 'student_user_model.freezed.dart';
part 'student_user_model.g.dart';

@freezed
class StudentUserModel with _$StudentUserModel {
  const factory StudentUserModel({
    required String id,
    required String username,
    required String email,
    required String userType,
    required String language,
    String? centerName,
    required String studentCode,
    required bool isActive,
    required String createdAt,
  }) = _StudentUserModel;

  factory StudentUserModel.fromJson(Map<String, dynamic> json) =>
      _$StudentUserModelFromJson(json);
}

extension StudentUserModelX on StudentUserModel {
  StudentUser toEntity() {
    return StudentUser(
      id: id,
      username: username,
      email: email,
      userType: userType,
      language: language,
      centerName: centerName,
      studentCode: studentCode,
      isActive: isActive,
      createdAt: createdAt,
    );
  }
}
