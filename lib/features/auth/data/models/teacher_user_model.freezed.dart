// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TeacherUserModel _$TeacherUserModelFromJson(Map<String, dynamic> json) {
  return _TeacherUserModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherUserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'center_name')
  String? get centerName => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_students_count')
  int get activeStudentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_groups_count')
  int get activeGroupsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_activity')
  String get lastActivity => throw _privateConstructorUsedError;

  /// Serializes this TeacherUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherUserModelCopyWith<TeacherUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherUserModelCopyWith<$Res> {
  factory $TeacherUserModelCopyWith(
    TeacherUserModel value,
    $Res Function(TeacherUserModel) then,
  ) = _$TeacherUserModelCopyWithImpl<$Res, TeacherUserModel>;
  @useResult
  $Res call({
    String id,
    String username,
    String email,
    @JsonKey(name: 'center_name') String? centerName,
    String language,
    @JsonKey(name: 'active_students_count') int activeStudentsCount,
    @JsonKey(name: 'active_groups_count') int activeGroupsCount,
    @JsonKey(name: 'last_activity') String lastActivity,
  });
}

/// @nodoc
class _$TeacherUserModelCopyWithImpl<$Res, $Val extends TeacherUserModel>
    implements $TeacherUserModelCopyWith<$Res> {
  _$TeacherUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? centerName = freezed,
    Object? language = null,
    Object? activeStudentsCount = null,
    Object? activeGroupsCount = null,
    Object? lastActivity = null,
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
            centerName: freezed == centerName
                ? _value.centerName
                : centerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            language: null == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String,
            activeStudentsCount: null == activeStudentsCount
                ? _value.activeStudentsCount
                : activeStudentsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            activeGroupsCount: null == activeGroupsCount
                ? _value.activeGroupsCount
                : activeGroupsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastActivity: null == lastActivity
                ? _value.lastActivity
                : lastActivity // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TeacherUserModelImplCopyWith<$Res>
    implements $TeacherUserModelCopyWith<$Res> {
  factory _$$TeacherUserModelImplCopyWith(
    _$TeacherUserModelImpl value,
    $Res Function(_$TeacherUserModelImpl) then,
  ) = __$$TeacherUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String username,
    String email,
    @JsonKey(name: 'center_name') String? centerName,
    String language,
    @JsonKey(name: 'active_students_count') int activeStudentsCount,
    @JsonKey(name: 'active_groups_count') int activeGroupsCount,
    @JsonKey(name: 'last_activity') String lastActivity,
  });
}

/// @nodoc
class __$$TeacherUserModelImplCopyWithImpl<$Res>
    extends _$TeacherUserModelCopyWithImpl<$Res, _$TeacherUserModelImpl>
    implements _$$TeacherUserModelImplCopyWith<$Res> {
  __$$TeacherUserModelImplCopyWithImpl(
    _$TeacherUserModelImpl _value,
    $Res Function(_$TeacherUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeacherUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? centerName = freezed,
    Object? language = null,
    Object? activeStudentsCount = null,
    Object? activeGroupsCount = null,
    Object? lastActivity = null,
  }) {
    return _then(
      _$TeacherUserModelImpl(
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
        centerName: freezed == centerName
            ? _value.centerName
            : centerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        language: null == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String,
        activeStudentsCount: null == activeStudentsCount
            ? _value.activeStudentsCount
            : activeStudentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        activeGroupsCount: null == activeGroupsCount
            ? _value.activeGroupsCount
            : activeGroupsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastActivity: null == lastActivity
            ? _value.lastActivity
            : lastActivity // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherUserModelImpl implements _TeacherUserModel {
  const _$TeacherUserModelImpl({
    required this.id,
    required this.username,
    required this.email,
    @JsonKey(name: 'center_name') this.centerName,
    required this.language,
    @JsonKey(name: 'active_students_count') required this.activeStudentsCount,
    @JsonKey(name: 'active_groups_count') required this.activeGroupsCount,
    @JsonKey(name: 'last_activity') required this.lastActivity,
  });

  factory _$TeacherUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey(name: 'center_name')
  final String? centerName;
  @override
  final String language;
  @override
  @JsonKey(name: 'active_students_count')
  final int activeStudentsCount;
  @override
  @JsonKey(name: 'active_groups_count')
  final int activeGroupsCount;
  @override
  @JsonKey(name: 'last_activity')
  final String lastActivity;

  @override
  String toString() {
    return 'TeacherUserModel(id: $id, username: $username, email: $email, centerName: $centerName, language: $language, activeStudentsCount: $activeStudentsCount, activeGroupsCount: $activeGroupsCount, lastActivity: $lastActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.centerName, centerName) ||
                other.centerName == centerName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.activeStudentsCount, activeStudentsCount) ||
                other.activeStudentsCount == activeStudentsCount) &&
            (identical(other.activeGroupsCount, activeGroupsCount) ||
                other.activeGroupsCount == activeGroupsCount) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    email,
    centerName,
    language,
    activeStudentsCount,
    activeGroupsCount,
    lastActivity,
  );

  /// Create a copy of TeacherUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherUserModelImplCopyWith<_$TeacherUserModelImpl> get copyWith =>
      __$$TeacherUserModelImplCopyWithImpl<_$TeacherUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherUserModelImplToJson(this);
  }
}

abstract class _TeacherUserModel implements TeacherUserModel {
  const factory _TeacherUserModel({
    required final String id,
    required final String username,
    required final String email,
    @JsonKey(name: 'center_name') final String? centerName,
    required final String language,
    @JsonKey(name: 'active_students_count')
    required final int activeStudentsCount,
    @JsonKey(name: 'active_groups_count') required final int activeGroupsCount,
    @JsonKey(name: 'last_activity') required final String lastActivity,
  }) = _$TeacherUserModelImpl;

  factory _TeacherUserModel.fromJson(Map<String, dynamic> json) =
      _$TeacherUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(name: 'center_name')
  String? get centerName;
  @override
  String get language;
  @override
  @JsonKey(name: 'active_students_count')
  int get activeStudentsCount;
  @override
  @JsonKey(name: 'active_groups_count')
  int get activeGroupsCount;
  @override
  @JsonKey(name: 'last_activity')
  String get lastActivity;

  /// Create a copy of TeacherUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherUserModelImplCopyWith<_$TeacherUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
