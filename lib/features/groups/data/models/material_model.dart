import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/material.dart';

part 'material_model.freezed.dart';
part 'material_model.g.dart';

@freezed
class MaterialModel with _$MaterialModel {
  const factory MaterialModel({
    required String id,
    required String title,
    String? description,
    @JsonKey(name: 'material_type') required String materialType,
    String? file,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'external_link') String? externalLink,
    @JsonKey(name: 'is_public') required bool isPublic,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _MaterialModel;

  factory MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialModelFromJson(json);
}

extension MaterialModelX on MaterialModel {
  GroupMaterial toEntity() {
    return GroupMaterial(
      id: id,
      title: title,
      description: description,
      materialType: materialType,
      file: file,
      fileUrl: fileUrl,
      externalLink: externalLink,
      isPublic: isPublic,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
