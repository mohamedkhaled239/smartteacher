import 'package:freezed_annotation/freezed_annotation.dart';
import 'material_model.dart';

part 'materials_response_model.freezed.dart';
part 'materials_response_model.g.dart';

@freezed
class MaterialsResponseModel with _$MaterialsResponseModel {
  const factory MaterialsResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<MaterialModel> results,
  }) = _MaterialsResponseModel;

  factory MaterialsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialsResponseModelFromJson(json);
}
