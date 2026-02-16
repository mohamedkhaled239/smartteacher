import 'package:freezed_annotation/freezed_annotation.dart';
import 'student_model.dart';

part 'students_response_model.freezed.dart';
part 'students_response_model.g.dart';

@freezed
class StudentsResponseModel with _$StudentsResponseModel {
  const factory StudentsResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<StudentModel> results,
  }) = _StudentsResponseModel;

  factory StudentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StudentsResponseModelFromJson(json);
}
