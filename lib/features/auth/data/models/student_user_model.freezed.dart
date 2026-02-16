// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentUserModel _$StudentUserModelFromJson(Map<String, dynamic> json) {
  return _StudentUserModel.fromJson(json);
}

/// @nodoc
mixin _$StudentUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get centerName => throw _privateConstructorUsedError;
  String get studentCode => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this StudentUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentUserModelCopyWith<StudentUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentUserModelCopyWith<$Res> {
  factory $StudentUserModelCopyWith(
    StudentUserModel value,
    $Res Function(StudentUserModel) then,
  ) = _$StudentUserModelCopyWithImpl<$Res, StudentUserModel>;
  @useResult
  $Res call({
    String id,
    String username,
    String email,
    String userType,
    String language,
    String? centerName,
    String studentCode,
    bool isActive,
    String createdAt,
  });
}

/// @nodoc
class _$StudentUserModelCopyWithImpl<$Res, $Val extends StudentUserModel>
    implements $StudentUserModelCopyWith<$Res> {
  _$StudentUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? userType = null,
    Object? language = null,
    Object? centerName = freezed,
    Object? studentCode = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            userType: null == userType
                ? _value.userType
                : userType // ignore: cast_nullable_to_non_nullable
                      as String,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            centerName: freezed == centerName
                ? _value.centerName
                : centerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            studentCode: null == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentUserModelImplCopyWith<$Res>
    implements $StudentUserModelCopyWith<$Res> {
  factory _$$StudentUserModelImplCopyWith(
    _$StudentUserModelImpl value,
    $Res Function(_$StudentUserModelImpl) then,
  ) = __$$StudentUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String username,
    String email,
    String userType,
    String language,
    String? centerName,
    String studentCode,
    bool isActive,
    String createdAt,
  });
}

/// @nodoc
class __$$StudentUserModelImplCopyWithImpl<$Res>
    extends _$StudentUserModelCopyWithImpl<$Res, _$StudentUserModelImpl>
    implements _$$StudentUserModelImplCopyWith<$Res> {
  __$$StudentUserModelImplCopyWithImpl(
    _$StudentUserModelImpl _value,
    $Res Function(_$StudentUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? userType = null,
    Object? language = null,
    Object? centerName = freezed,
    Object? studentCode = null,
    Object? isActive = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$StudentUserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        userType: null == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                  as String,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        centerName: freezed == centerName
            ? _value.centerName
            : centerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentCode: null == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentUserModelImpl implements _StudentUserModel {
  const _$StudentUserModelImpl({
    required this.id,
    required this.username,
    required this.email,
    required this.userType,
    required this.language,
    this.centerName,
    required this.studentCode,
    required this.isActive,
    required this.createdAt,
  });

  factory _$StudentUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String userType;
  @override
  final String language;
  @override
  final String? centerName;
  @override
  final String studentCode;
  @override
  final bool isActive;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'StudentUserModel(id: $id, username: $username, email: $email, userType: $userType, language: $language, centerName: $centerName, studentCode: $studentCode, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.centerName, centerName) ||
                other.centerName == centerName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    email,
    userType,
    language,
    centerName,
    studentCode,
    isActive,
    createdAt,
  );

  /// Create a copy of StudentUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentUserModelImplCopyWith<_$StudentUserModelImpl> get copyWith =>
      __$$StudentUserModelImplCopyWithImpl<_$StudentUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentUserModelImplToJson(this);
  }
}

abstract class _StudentUserModel implements StudentUserModel {
  const factory _StudentUserModel({
    required final String id,
    required final String username,
    required final String email,
    required final String userType,
    required final String language,
    final String? centerName,
    required final String studentCode,
    required final bool isActive,
    required final String createdAt,
  }) = _$StudentUserModelImpl;

  factory _StudentUserModel.fromJson(Map<String, dynamic> json) =
      _$StudentUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get userType;
  @override
  String get language;
  @override
  String? get centerName;
  @override
  String get studentCode;
  @override
  bool get isActive;
  @override
  String get createdAt;

  /// Create a copy of StudentUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentUserModelImplCopyWith<_$StudentUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
