// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MaterialModel _$MaterialModelFromJson(Map<String, dynamic> json) {
  return _MaterialModel.fromJson(json);
}

/// @nodoc
mixin _$MaterialModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_type')
  String get materialType => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_link')
  String? get externalLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MaterialModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaterialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialModelCopyWith<MaterialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialModelCopyWith<$Res> {
  factory $MaterialModelCopyWith(
    MaterialModel value,
    $Res Function(MaterialModel) then,
  ) = _$MaterialModelCopyWithImpl<$Res, MaterialModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String? description,
    @JsonKey(name: 'material_type') String materialType,
    String? file,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'external_link') String? externalLink,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$MaterialModelCopyWithImpl<$Res, $Val extends MaterialModel>
    implements $MaterialModelCopyWith<$Res> {
  _$MaterialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? materialType = null,
    Object? file = freezed,
    Object? fileUrl = freezed,
    Object? externalLink = freezed,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            materialType: null == materialType
                ? _value.materialType
                : materialType // ignore: cast_nullable_to_non_nullable
                      as String,
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            externalLink: freezed == externalLink
                ? _value.externalLink
                : externalLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaterialModelImplCopyWith<$Res>
    implements $MaterialModelCopyWith<$Res> {
  factory _$$MaterialModelImplCopyWith(
    _$MaterialModelImpl value,
    $Res Function(_$MaterialModelImpl) then,
  ) = __$$MaterialModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String? description,
    @JsonKey(name: 'material_type') String materialType,
    String? file,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'external_link') String? externalLink,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$MaterialModelImplCopyWithImpl<$Res>
    extends _$MaterialModelCopyWithImpl<$Res, _$MaterialModelImpl>
    implements _$$MaterialModelImplCopyWith<$Res> {
  __$$MaterialModelImplCopyWithImpl(
    _$MaterialModelImpl _value,
    $Res Function(_$MaterialModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? materialType = null,
    Object? file = freezed,
    Object? fileUrl = freezed,
    Object? externalLink = freezed,
    Object? isPublic = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$MaterialModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        materialType: null == materialType
            ? _value.materialType
            : materialType // ignore: cast_nullable_to_non_nullable
                  as String,
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        externalLink: freezed == externalLink
            ? _value.externalLink
            : externalLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialModelImpl implements _MaterialModel {
  const _$MaterialModelImpl({
    required this.id,
    required this.title,
    this.description,
    @JsonKey(name: 'material_type') required this.materialType,
    this.file,
    @JsonKey(name: 'file_url') this.fileUrl,
    @JsonKey(name: 'external_link') this.externalLink,
    @JsonKey(name: 'is_public') required this.isPublic,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$MaterialModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'material_type')
  final String materialType;
  @override
  final String? file;
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;
  @override
  @JsonKey(name: 'external_link')
  final String? externalLink;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MaterialModel(id: $id, title: $title, description: $description, materialType: $materialType, file: $file, fileUrl: $fileUrl, externalLink: $externalLink, isPublic: $isPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.materialType, materialType) ||
                other.materialType == materialType) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.externalLink, externalLink) ||
                other.externalLink == externalLink) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
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
  );

  /// Create a copy of MaterialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialModelImplCopyWith<_$MaterialModelImpl> get copyWith =>
      __$$MaterialModelImplCopyWithImpl<_$MaterialModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialModelImplToJson(this);
  }
}

abstract class _MaterialModel implements MaterialModel {
  const factory _MaterialModel({
    required final String id,
    required final String title,
    final String? description,
    @JsonKey(name: 'material_type') required final String materialType,
    final String? file,
    @JsonKey(name: 'file_url') final String? fileUrl,
    @JsonKey(name: 'external_link') final String? externalLink,
    @JsonKey(name: 'is_public') required final bool isPublic,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$MaterialModelImpl;

  factory _MaterialModel.fromJson(Map<String, dynamic> json) =
      _$MaterialModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'material_type')
  String get materialType;
  @override
  String? get file;
  @override
  @JsonKey(name: 'file_url')
  String? get fileUrl;
  @override
  @JsonKey(name: 'external_link')
  String? get externalLink;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of MaterialModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialModelImplCopyWith<_$MaterialModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
