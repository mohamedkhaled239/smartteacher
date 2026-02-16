import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/student_login_response.dart';
import 'student_user_model.dart';

part 'student_login_response_model.freezed.dart';
part 'student_login_response_model.g.dart';

@freezed
class StudentLoginResponseModel with _$StudentLoginResponseModel {
  const factory StudentLoginResponseModel({
    required String access,
    required String refresh,
    required StudentUserModel user,
  }) = _StudentLoginResponseModel;

  factory StudentLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StudentLoginResponseModelFromJson(json);
}

extension StudentLoginResponseModelX on StudentLoginResponseModel {
  StudentLoginResponse toEntity() {
    return StudentLoginResponse(
      accessToken: access,
      refreshToken: refresh,
      user: user.toEntity(),
    );
  }
}
