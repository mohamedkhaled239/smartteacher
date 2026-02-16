import 'package:equatable/equatable.dart';

class GroupMaterial extends Equatable {
  final String id;
  final String title;
  final String? description;
  final String materialType;
  final String? file;
  final String? fileUrl;
  final String? externalLink;
  final bool isPublic;
  final DateTime createdAt;
  final DateTime updatedAt;

  const GroupMaterial({
    required this.id,
    required this.title,
    this.description,
    required this.materialType,
    this.file,
    this.fileUrl,
    this.externalLink,
    required this.isPublic,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    materialType,
    file,
    fileUrl,
    externalLink,
    isPublic,
    createdAt,
    updatedAt,
  ];
}
