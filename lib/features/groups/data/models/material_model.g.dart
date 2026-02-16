// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaterialModelImpl _$$MaterialModelImplFromJson(Map<String, dynamic> json) =>
    _$MaterialModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      materialType: json['material_type'] as String,
      file: json['file'] as String?,
      fileUrl: json['file_url'] as String?,
      externalLink: json['external_link'] as String?,
      isPublic: json['is_public'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MaterialModelImplToJson(_$MaterialModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'material_type': instance.materialType,
      'file': instance.file,
      'file_url': instance.fileUrl,
      'external_link': instance.externalLink,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
