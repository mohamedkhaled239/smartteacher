// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TeacherLoginResponseModel _$TeacherLoginResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _TeacherLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherLoginResponseModel {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;
  TeacherUserModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_token')
  String get sessionToken => throw _privateConstructorUsedError;

  /// Serializes this TeacherLoginResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherLoginResponseModelCopyWith<TeacherLoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherLoginResponseModelCopyWith<$Res> {
  factory $TeacherLoginResponseModelCopyWith(
    TeacherLoginResponseModel value,
    $Res Function(TeacherLoginResponseModel) then,
  ) = _$TeacherLoginResponseModelCopyWithImpl<$Res, TeacherLoginResponseModel>;
  @useResult
  $Res call({
    String access,
    String refresh,
    TeacherUserModel user,
    @JsonKey(name: 'session_token') String sessionToken,
  });

  $TeacherUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$TeacherLoginResponseModelCopyWithImpl<
  $Res,
  $Val extends TeacherLoginResponseModel
>
    implements $TeacherLoginResponseModelCopyWith<$Res> {
  _$TeacherLoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
    Object? sessionToken = null,
  }) {
    return _then(
      _value.copyWith(
            access: null == access
                ? _value.access
                : access // ignore: cast_nullable_to_non_nullable
                      as String,
            refresh: null == refresh
                ? _value.refresh
                : refresh // ignore: cast_nullable_to_non_nullable
                      as String,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as TeacherUserModel,
            sessionToken: null == sessionToken
                ? _value.sessionToken
                : sessionToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherUserModelCopyWith<$Res> get user {
    return $TeacherUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherLoginResponseModelImplCopyWith<$Res>
    implements $TeacherLoginResponseModelCopyWith<$Res> {
  factory _$$TeacherLoginResponseModelImplCopyWith(
    _$TeacherLoginResponseModelImpl value,
    $Res Function(_$TeacherLoginResponseModelImpl) then,
  ) = __$$TeacherLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String access,
    String refresh,
    TeacherUserModel user,
    @JsonKey(name: 'session_token') String sessionToken,
  });

  @override
  $TeacherUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$TeacherLoginResponseModelImplCopyWithImpl<$Res>
    extends
        _$TeacherLoginResponseModelCopyWithImpl<
          $Res,
          _$TeacherLoginResponseModelImpl
        >
    implements _$$TeacherLoginResponseModelImplCopyWith<$Res> {
  __$$TeacherLoginResponseModelImplCopyWithImpl(
    _$TeacherLoginResponseModelImpl _value,
    $Res Function(_$TeacherLoginResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
    Object? user = null,
    Object? sessionToken = null,
  }) {
    return _then(
      _$TeacherLoginResponseModelImpl(
        access: null == access
            ? _value.access
            : access // ignore: cast_nullable_to_non_nullable
                  as String,
        refresh: null == refresh
            ? _value.refresh
            : refresh // ignore: cast_nullable_to_non_nullable
                  as String,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as TeacherUserModel,
        sessionToken: null == sessionToken
            ? _value.sessionToken
            : sessionToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherLoginResponseModelImpl implements _TeacherLoginResponseModel {
  const _$TeacherLoginResponseModelImpl({
    required this.access,
    required this.refresh,
    required this.user,
    @JsonKey(name: 'session_token') required this.sessionToken,
  });

  factory _$TeacherLoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherLoginResponseModelImplFromJson(json);

  @override
  final String access;
  @override
  final String refresh;
  @override
  final TeacherUserModel user;
  @override
  @JsonKey(name: 'session_token')
  final String sessionToken;

  @override
  String toString() {
    return 'TeacherLoginResponseModel(access: $access, refresh: $refresh, user: $user, sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherLoginResponseModelImpl &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, access, refresh, user, sessionToken);

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherLoginResponseModelImplCopyWith<_$TeacherLoginResponseModelImpl>
  get copyWith =>
      __$$TeacherLoginResponseModelImplCopyWithImpl<
        _$TeacherLoginResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherLoginResponseModelImplToJson(this);
  }
}

abstract class _TeacherLoginResponseModel implements TeacherLoginResponseModel {
  const factory _TeacherLoginResponseModel({
    required final String access,
    required final String refresh,
    required final TeacherUserModel user,
    @JsonKey(name: 'session_token') required final String sessionToken,
  }) = _$TeacherLoginResponseModelImpl;

  factory _TeacherLoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$TeacherLoginResponseModelImpl.fromJson;

  @override
  String get access;
  @override
  String get refresh;
  @override
  TeacherUserModel get user;
  @override
  @JsonKey(name: 'session_token')
  String get sessionToken;

  /// Create a copy of TeacherLoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherLoginResponseModelImplCopyWith<_$TeacherLoginResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
