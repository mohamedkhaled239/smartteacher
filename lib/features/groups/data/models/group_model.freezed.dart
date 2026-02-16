// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) {
  return _GroupModel.fromJson(json);
}

/// @nodoc
mixin _$GroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_type')
  String get groupType => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_students', readValue: _readInt)
  int get maxStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'students_count', readValue: _readStudentsCount)
  int get studentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_price', readValue: _readString)
  String get monthlyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_price', readValue: _readString)
  String get sessionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', defaultValue: true)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
  String? get nextSessionDate => throw _privateConstructorUsedError;

  /// Serializes this GroupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupModelCopyWith<GroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupModelCopyWith<$Res> {
  factory $GroupModelCopyWith(
    GroupModel value,
    $Res Function(GroupModel) then,
  ) = _$GroupModelCopyWithImpl<$Res, GroupModel>;
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'group_type') String groupType,
    String subject,
    @JsonKey(name: 'max_students', readValue: _readInt) int maxStudents,
    @JsonKey(name: 'students_count', readValue: _readStudentsCount)
    int studentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString) String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString) String sessionPrice,
    @JsonKey(name: 'is_active', defaultValue: true) bool isActive,
    @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
    String? nextSessionDate,
  });
}

/// @nodoc
class _$GroupModelCopyWithImpl<$Res, $Val extends GroupModel>
    implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? groupType = null,
    Object? subject = null,
    Object? maxStudents = null,
    Object? studentsCount = null,
    Object? monthlyPrice = null,
    Object? sessionPrice = null,
    Object? isActive = null,
    Object? nextSessionDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            groupType: null == groupType
                ? _value.groupType
                : groupType // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String,
            maxStudents: null == maxStudents
                ? _value.maxStudents
                : maxStudents // ignore: cast_nullable_to_non_nullable
                      as int,
            studentsCount: null == studentsCount
                ? _value.studentsCount
                : studentsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            monthlyPrice: null == monthlyPrice
                ? _value.monthlyPrice
                : monthlyPrice // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionPrice: null == sessionPrice
                ? _value.sessionPrice
                : sessionPrice // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            nextSessionDate: freezed == nextSessionDate
                ? _value.nextSessionDate
                : nextSessionDate // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroupModelImplCopyWith<$Res>
    implements $GroupModelCopyWith<$Res> {
  factory _$$GroupModelImplCopyWith(
    _$GroupModelImpl value,
    $Res Function(_$GroupModelImpl) then,
  ) = __$$GroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'group_type') String groupType,
    String subject,
    @JsonKey(name: 'max_students', readValue: _readInt) int maxStudents,
    @JsonKey(name: 'students_count', readValue: _readStudentsCount)
    int studentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString) String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString) String sessionPrice,
    @JsonKey(name: 'is_active', defaultValue: true) bool isActive,
    @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
    String? nextSessionDate,
  });
}

/// @nodoc
class __$$GroupModelImplCopyWithImpl<$Res>
    extends _$GroupModelCopyWithImpl<$Res, _$GroupModelImpl>
    implements _$$GroupModelImplCopyWith<$Res> {
  __$$GroupModelImplCopyWithImpl(
    _$GroupModelImpl _value,
    $Res Function(_$GroupModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? groupType = null,
    Object? subject = null,
    Object? maxStudents = null,
    Object? studentsCount = null,
    Object? monthlyPrice = null,
    Object? sessionPrice = null,
    Object? isActive = null,
    Object? nextSessionDate = freezed,
  }) {
    return _then(
      _$GroupModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        groupType: null == groupType
            ? _value.groupType
            : groupType // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String,
        maxStudents: null == maxStudents
            ? _value.maxStudents
            : maxStudents // ignore: cast_nullable_to_non_nullable
                  as int,
        studentsCount: null == studentsCount
            ? _value.studentsCount
            : studentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        monthlyPrice: null == monthlyPrice
            ? _value.monthlyPrice
            : monthlyPrice // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionPrice: null == sessionPrice
            ? _value.sessionPrice
            : sessionPrice // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        nextSessionDate: freezed == nextSessionDate
            ? _value.nextSessionDate
            : nextSessionDate // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupModelImpl implements _GroupModel {
  const _$GroupModelImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'group_type') required this.groupType,
    required this.subject,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required this.maxStudents,
    @JsonKey(name: 'students_count', readValue: _readStudentsCount)
    required this.studentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required this.monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required this.sessionPrice,
    @JsonKey(name: 'is_active', defaultValue: true) required this.isActive,
    @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
    this.nextSessionDate,
  });

  factory _$GroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'group_type')
  final String groupType;
  @override
  final String subject;
  @override
  @JsonKey(name: 'max_students', readValue: _readInt)
  final int maxStudents;
  @override
  @JsonKey(name: 'students_count', readValue: _readStudentsCount)
  final int studentsCount;
  @override
  @JsonKey(name: 'monthly_price', readValue: _readString)
  final String monthlyPrice;
  @override
  @JsonKey(name: 'session_price', readValue: _readString)
  final String sessionPrice;
  @override
  @JsonKey(name: 'is_active', defaultValue: true)
  final bool isActive;
  @override
  @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
  final String? nextSessionDate;

  @override
  String toString() {
    return 'GroupModel(id: $id, name: $name, groupType: $groupType, subject: $subject, maxStudents: $maxStudents, studentsCount: $studentsCount, monthlyPrice: $monthlyPrice, sessionPrice: $sessionPrice, isActive: $isActive, nextSessionDate: $nextSessionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.maxStudents, maxStudents) ||
                other.maxStudents == maxStudents) &&
            (identical(other.studentsCount, studentsCount) ||
                other.studentsCount == studentsCount) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.sessionPrice, sessionPrice) ||
                other.sessionPrice == sessionPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.nextSessionDate, nextSessionDate) ||
                other.nextSessionDate == nextSessionDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    groupType,
    subject,
    maxStudents,
    studentsCount,
    monthlyPrice,
    sessionPrice,
    isActive,
    nextSessionDate,
  );

  /// Create a copy of GroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupModelImplCopyWith<_$GroupModelImpl> get copyWith =>
      __$$GroupModelImplCopyWithImpl<_$GroupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupModelImplToJson(this);
  }
}

abstract class _GroupModel implements GroupModel {
  const factory _GroupModel({
    required final String id,
    required final String name,
    @JsonKey(name: 'group_type') required final String groupType,
    required final String subject,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required final int maxStudents,
    @JsonKey(name: 'students_count', readValue: _readStudentsCount)
    required final int studentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required final String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required final String sessionPrice,
    @JsonKey(name: 'is_active', defaultValue: true)
    required final bool isActive,
    @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
    final String? nextSessionDate,
  }) = _$GroupModelImpl;

  factory _GroupModel.fromJson(Map<String, dynamic> json) =
      _$GroupModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'group_type')
  String get groupType;
  @override
  String get subject;
  @override
  @JsonKey(name: 'max_students', readValue: _readInt)
  int get maxStudents;
  @override
  @JsonKey(name: 'students_count', readValue: _readStudentsCount)
  int get studentsCount;
  @override
  @JsonKey(name: 'monthly_price', readValue: _readString)
  String get monthlyPrice;
  @override
  @JsonKey(name: 'session_price', readValue: _readString)
  String get sessionPrice;
  @override
  @JsonKey(name: 'is_active', defaultValue: true)
  bool get isActive;
  @override
  @JsonKey(name: 'next_session_date', readValue: _readNextSessionDate)
  String? get nextSessionDate;

  /// Create a copy of GroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupModelImplCopyWith<_$GroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
