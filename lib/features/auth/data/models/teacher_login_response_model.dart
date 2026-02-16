import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/teacher_login_response.dart';
import 'teacher_user_model.dart';

part 'teacher_login_response_model.freezed.dart';
part 'teacher_login_response_model.g.dart';

@freezed
class TeacherLoginResponseModel with _$TeacherLoginResponseModel {
  const factory TeacherLoginResponseModel({
    required String access,
    required String refresh,
    required TeacherUserModel user,
    @JsonKey(name: 'session_token') required String sessionToken,
  }) = _TeacherLoginResponseModel;

  factory TeacherLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherLoginResponseModelFromJson(json);
}

extension TeacherLoginResponseModelX on TeacherLoginResponseModel {
  TeacherLoginResponse toEntity() {
    return TeacherLoginResponse(
      accessToken: access,
      refreshToken: refresh,
      user: user.toEntity(),
      sessionToken: sessionToken,
    );
  }
}
