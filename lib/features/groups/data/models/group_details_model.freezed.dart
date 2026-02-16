// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GroupDetailsModel _$GroupDetailsModelFromJson(Map<String, dynamic> json) {
  return _GroupDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$GroupDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_type')
  String get groupType => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade_level')
  String? get gradeLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_students', readValue: _readInt)
  int get maxStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_students_count', readValue: _readInt)
  int get currentStudentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_price', readValue: _readString)
  String get monthlyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_price', readValue: _readString)
  String get sessionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_discount', readValue: _readString)
  String get groupDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sessions_per_month', readValue: _readInt)
  int get sessionsPerMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
  int get sessionDurationMinutes => throw _privateConstructorUsedError;
  String? get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_meeting_link')
  String? get onlineMeetingLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_password')
  String? get meetingPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_notes')
  String? get scheduleNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', defaultValue: true)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'students', defaultValue: [])
  List<StudentModel> get students => throw _privateConstructorUsedError;
  GroupStatisticsModel get statistics => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GroupDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupDetailsModelCopyWith<GroupDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailsModelCopyWith<$Res> {
  factory $GroupDetailsModelCopyWith(
    GroupDetailsModel value,
    $Res Function(GroupDetailsModel) then,
  ) = _$GroupDetailsModelCopyWithImpl<$Res, GroupDetailsModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    @JsonKey(name: 'group_type') String groupType,
    String subject,
    @JsonKey(name: 'grade_level') String? gradeLevel,
    @JsonKey(name: 'max_students', readValue: _readInt) int maxStudents,
    @JsonKey(name: 'current_students_count', readValue: _readInt)
    int currentStudentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString) String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString) String sessionPrice,
    @JsonKey(name: 'group_discount', readValue: _readString)
    String groupDiscount,
    @JsonKey(name: 'sessions_per_month', readValue: _readInt)
    int sessionsPerMonth,
    @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
    int sessionDurationMinutes,
    String? classroom,
    @JsonKey(name: 'online_meeting_link') String? onlineMeetingLink,
    @JsonKey(name: 'meeting_password') String? meetingPassword,
    @JsonKey(name: 'schedule_notes') String? scheduleNotes,
    @JsonKey(name: 'is_active', defaultValue: true) bool isActive,
    @JsonKey(name: 'students', defaultValue: []) List<StudentModel> students,
    GroupStatisticsModel statistics,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  $GroupStatisticsModelCopyWith<$Res> get statistics;
}

/// @nodoc
class _$GroupDetailsModelCopyWithImpl<$Res, $Val extends GroupDetailsModel>
    implements $GroupDetailsModelCopyWith<$Res> {
  _$GroupDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? groupType = null,
    Object? subject = null,
    Object? gradeLevel = freezed,
    Object? maxStudents = null,
    Object? currentStudentsCount = null,
    Object? monthlyPrice = null,
    Object? sessionPrice = null,
    Object? groupDiscount = null,
    Object? sessionsPerMonth = null,
    Object? sessionDurationMinutes = null,
    Object? classroom = freezed,
    Object? onlineMeetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? scheduleNotes = freezed,
    Object? isActive = null,
    Object? students = null,
    Object? statistics = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            groupType: null == groupType
                ? _value.groupType
                : groupType // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String,
            gradeLevel: freezed == gradeLevel
                ? _value.gradeLevel
                : gradeLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
            maxStudents: null == maxStudents
                ? _value.maxStudents
                : maxStudents // ignore: cast_nullable_to_non_nullable
                      as int,
            currentStudentsCount: null == currentStudentsCount
                ? _value.currentStudentsCount
                : currentStudentsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            monthlyPrice: null == monthlyPrice
                ? _value.monthlyPrice
                : monthlyPrice // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionPrice: null == sessionPrice
                ? _value.sessionPrice
                : sessionPrice // ignore: cast_nullable_to_non_nullable
                      as String,
            groupDiscount: null == groupDiscount
                ? _value.groupDiscount
                : groupDiscount // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionsPerMonth: null == sessionsPerMonth
                ? _value.sessionsPerMonth
                : sessionsPerMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            sessionDurationMinutes: null == sessionDurationMinutes
                ? _value.sessionDurationMinutes
                : sessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            classroom: freezed == classroom
                ? _value.classroom
                : classroom // ignore: cast_nullable_to_non_nullable
                      as String?,
            onlineMeetingLink: freezed == onlineMeetingLink
                ? _value.onlineMeetingLink
                : onlineMeetingLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            meetingPassword: freezed == meetingPassword
                ? _value.meetingPassword
                : meetingPassword // ignore: cast_nullable_to_non_nullable
                      as String?,
            scheduleNotes: freezed == scheduleNotes
                ? _value.scheduleNotes
                : scheduleNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<StudentModel>,
            statistics: null == statistics
                ? _value.statistics
                : statistics // ignore: cast_nullable_to_non_nullable
                      as GroupStatisticsModel,
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

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupStatisticsModelCopyWith<$Res> get statistics {
    return $GroupStatisticsModelCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupDetailsModelImplCopyWith<$Res>
    implements $GroupDetailsModelCopyWith<$Res> {
  factory _$$GroupDetailsModelImplCopyWith(
    _$GroupDetailsModelImpl value,
    $Res Function(_$GroupDetailsModelImpl) then,
  ) = __$$GroupDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    @JsonKey(name: 'group_type') String groupType,
    String subject,
    @JsonKey(name: 'grade_level') String? gradeLevel,
    @JsonKey(name: 'max_students', readValue: _readInt) int maxStudents,
    @JsonKey(name: 'current_students_count', readValue: _readInt)
    int currentStudentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString) String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString) String sessionPrice,
    @JsonKey(name: 'group_discount', readValue: _readString)
    String groupDiscount,
    @JsonKey(name: 'sessions_per_month', readValue: _readInt)
    int sessionsPerMonth,
    @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
    int sessionDurationMinutes,
    String? classroom,
    @JsonKey(name: 'online_meeting_link') String? onlineMeetingLink,
    @JsonKey(name: 'meeting_password') String? meetingPassword,
    @JsonKey(name: 'schedule_notes') String? scheduleNotes,
    @JsonKey(name: 'is_active', defaultValue: true) bool isActive,
    @JsonKey(name: 'students', defaultValue: []) List<StudentModel> students,
    GroupStatisticsModel statistics,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });

  @override
  $GroupStatisticsModelCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$GroupDetailsModelImplCopyWithImpl<$Res>
    extends _$GroupDetailsModelCopyWithImpl<$Res, _$GroupDetailsModelImpl>
    implements _$$GroupDetailsModelImplCopyWith<$Res> {
  __$$GroupDetailsModelImplCopyWithImpl(
    _$GroupDetailsModelImpl _value,
    $Res Function(_$GroupDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? groupType = null,
    Object? subject = null,
    Object? gradeLevel = freezed,
    Object? maxStudents = null,
    Object? currentStudentsCount = null,
    Object? monthlyPrice = null,
    Object? sessionPrice = null,
    Object? groupDiscount = null,
    Object? sessionsPerMonth = null,
    Object? sessionDurationMinutes = null,
    Object? classroom = freezed,
    Object? onlineMeetingLink = freezed,
    Object? meetingPassword = freezed,
    Object? scheduleNotes = freezed,
    Object? isActive = null,
    Object? students = null,
    Object? statistics = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$GroupDetailsModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        groupType: null == groupType
            ? _value.groupType
            : groupType // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String,
        gradeLevel: freezed == gradeLevel
            ? _value.gradeLevel
            : gradeLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxStudents: null == maxStudents
            ? _value.maxStudents
            : maxStudents // ignore: cast_nullable_to_non_nullable
                  as int,
        currentStudentsCount: null == currentStudentsCount
            ? _value.currentStudentsCount
            : currentStudentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        monthlyPrice: null == monthlyPrice
            ? _value.monthlyPrice
            : monthlyPrice // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionPrice: null == sessionPrice
            ? _value.sessionPrice
            : sessionPrice // ignore: cast_nullable_to_non_nullable
                  as String,
        groupDiscount: null == groupDiscount
            ? _value.groupDiscount
            : groupDiscount // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionsPerMonth: null == sessionsPerMonth
            ? _value.sessionsPerMonth
            : sessionsPerMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        sessionDurationMinutes: null == sessionDurationMinutes
            ? _value.sessionDurationMinutes
            : sessionDurationMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        classroom: freezed == classroom
            ? _value.classroom
            : classroom // ignore: cast_nullable_to_non_nullable
                  as String?,
        onlineMeetingLink: freezed == onlineMeetingLink
            ? _value.onlineMeetingLink
            : onlineMeetingLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        meetingPassword: freezed == meetingPassword
            ? _value.meetingPassword
            : meetingPassword // ignore: cast_nullable_to_non_nullable
                  as String?,
        scheduleNotes: freezed == scheduleNotes
            ? _value.scheduleNotes
            : scheduleNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<StudentModel>,
        statistics: null == statistics
            ? _value.statistics
            : statistics // ignore: cast_nullable_to_non_nullable
                  as GroupStatisticsModel,
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
class _$GroupDetailsModelImpl implements _GroupDetailsModel {
  const _$GroupDetailsModelImpl({
    required this.id,
    required this.name,
    this.description,
    @JsonKey(name: 'group_type') required this.groupType,
    required this.subject,
    @JsonKey(name: 'grade_level') this.gradeLevel,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required this.maxStudents,
    @JsonKey(name: 'current_students_count', readValue: _readInt)
    required this.currentStudentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required this.monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required this.sessionPrice,
    @JsonKey(name: 'group_discount', readValue: _readString)
    required this.groupDiscount,
    @JsonKey(name: 'sessions_per_month', readValue: _readInt)
    required this.sessionsPerMonth,
    @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
    required this.sessionDurationMinutes,
    this.classroom,
    @JsonKey(name: 'online_meeting_link') this.onlineMeetingLink,
    @JsonKey(name: 'meeting_password') this.meetingPassword,
    @JsonKey(name: 'schedule_notes') this.scheduleNotes,
    @JsonKey(name: 'is_active', defaultValue: true) required this.isActive,
    @JsonKey(name: 'students', defaultValue: [])
    required final List<StudentModel> students,
    required this.statistics,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  }) : _students = students;

  factory _$GroupDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDetailsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'group_type')
  final String groupType;
  @override
  final String subject;
  @override
  @JsonKey(name: 'grade_level')
  final String? gradeLevel;
  @override
  @JsonKey(name: 'max_students', readValue: _readInt)
  final int maxStudents;
  @override
  @JsonKey(name: 'current_students_count', readValue: _readInt)
  final int currentStudentsCount;
  @override
  @JsonKey(name: 'monthly_price', readValue: _readString)
  final String monthlyPrice;
  @override
  @JsonKey(name: 'session_price', readValue: _readString)
  final String sessionPrice;
  @override
  @JsonKey(name: 'group_discount', readValue: _readString)
  final String groupDiscount;
  @override
  @JsonKey(name: 'sessions_per_month', readValue: _readInt)
  final int sessionsPerMonth;
  @override
  @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
  final int sessionDurationMinutes;
  @override
  final String? classroom;
  @override
  @JsonKey(name: 'online_meeting_link')
  final String? onlineMeetingLink;
  @override
  @JsonKey(name: 'meeting_password')
  final String? meetingPassword;
  @override
  @JsonKey(name: 'schedule_notes')
  final String? scheduleNotes;
  @override
  @JsonKey(name: 'is_active', defaultValue: true)
  final bool isActive;
  final List<StudentModel> _students;
  @override
  @JsonKey(name: 'students', defaultValue: [])
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final GroupStatisticsModel statistics;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GroupDetailsModel(id: $id, name: $name, description: $description, groupType: $groupType, subject: $subject, gradeLevel: $gradeLevel, maxStudents: $maxStudents, currentStudentsCount: $currentStudentsCount, monthlyPrice: $monthlyPrice, sessionPrice: $sessionPrice, groupDiscount: $groupDiscount, sessionsPerMonth: $sessionsPerMonth, sessionDurationMinutes: $sessionDurationMinutes, classroom: $classroom, onlineMeetingLink: $onlineMeetingLink, meetingPassword: $meetingPassword, scheduleNotes: $scheduleNotes, isActive: $isActive, students: $students, statistics: $statistics, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.gradeLevel, gradeLevel) ||
                other.gradeLevel == gradeLevel) &&
            (identical(other.maxStudents, maxStudents) ||
                other.maxStudents == maxStudents) &&
            (identical(other.currentStudentsCount, currentStudentsCount) ||
                other.currentStudentsCount == currentStudentsCount) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.sessionPrice, sessionPrice) ||
                other.sessionPrice == sessionPrice) &&
            (identical(other.groupDiscount, groupDiscount) ||
                other.groupDiscount == groupDiscount) &&
            (identical(other.sessionsPerMonth, sessionsPerMonth) ||
                other.sessionsPerMonth == sessionsPerMonth) &&
            (identical(other.sessionDurationMinutes, sessionDurationMinutes) ||
                other.sessionDurationMinutes == sessionDurationMinutes) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.onlineMeetingLink, onlineMeetingLink) ||
                other.onlineMeetingLink == onlineMeetingLink) &&
            (identical(other.meetingPassword, meetingPassword) ||
                other.meetingPassword == meetingPassword) &&
            (identical(other.scheduleNotes, scheduleNotes) ||
                other.scheduleNotes == scheduleNotes) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    description,
    groupType,
    subject,
    gradeLevel,
    maxStudents,
    currentStudentsCount,
    monthlyPrice,
    sessionPrice,
    groupDiscount,
    sessionsPerMonth,
    sessionDurationMinutes,
    classroom,
    onlineMeetingLink,
    meetingPassword,
    scheduleNotes,
    isActive,
    const DeepCollectionEquality().hash(_students),
    statistics,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDetailsModelImplCopyWith<_$GroupDetailsModelImpl> get copyWith =>
      __$$GroupDetailsModelImplCopyWithImpl<_$GroupDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDetailsModelImplToJson(this);
  }
}

abstract class _GroupDetailsModel implements GroupDetailsModel {
  const factory _GroupDetailsModel({
    required final String id,
    required final String name,
    final String? description,
    @JsonKey(name: 'group_type') required final String groupType,
    required final String subject,
    @JsonKey(name: 'grade_level') final String? gradeLevel,
    @JsonKey(name: 'max_students', readValue: _readInt)
    required final int maxStudents,
    @JsonKey(name: 'current_students_count', readValue: _readInt)
    required final int currentStudentsCount,
    @JsonKey(name: 'monthly_price', readValue: _readString)
    required final String monthlyPrice,
    @JsonKey(name: 'session_price', readValue: _readString)
    required final String sessionPrice,
    @JsonKey(name: 'group_discount', readValue: _readString)
    required final String groupDiscount,
    @JsonKey(name: 'sessions_per_month', readValue: _readInt)
    required final int sessionsPerMonth,
    @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
    required final int sessionDurationMinutes,
    final String? classroom,
    @JsonKey(name: 'online_meeting_link') final String? onlineMeetingLink,
    @JsonKey(name: 'meeting_password') final String? meetingPassword,
    @JsonKey(name: 'schedule_notes') final String? scheduleNotes,
    @JsonKey(name: 'is_active', defaultValue: true)
    required final bool isActive,
    @JsonKey(name: 'students', defaultValue: [])
    required final List<StudentModel> students,
    required final GroupStatisticsModel statistics,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$GroupDetailsModelImpl;

  factory _GroupDetailsModel.fromJson(Map<String, dynamic> json) =
      _$GroupDetailsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'group_type')
  String get groupType;
  @override
  String get subject;
  @override
  @JsonKey(name: 'grade_level')
  String? get gradeLevel;
  @override
  @JsonKey(name: 'max_students', readValue: _readInt)
  int get maxStudents;
  @override
  @JsonKey(name: 'current_students_count', readValue: _readInt)
  int get currentStudentsCount;
  @override
  @JsonKey(name: 'monthly_price', readValue: _readString)
  String get monthlyPrice;
  @override
  @JsonKey(name: 'session_price', readValue: _readString)
  String get sessionPrice;
  @override
  @JsonKey(name: 'group_discount', readValue: _readString)
  String get groupDiscount;
  @override
  @JsonKey(name: 'sessions_per_month', readValue: _readInt)
  int get sessionsPerMonth;
  @override
  @JsonKey(name: 'session_duration_minutes', readValue: _readInt)
  int get sessionDurationMinutes;
  @override
  String? get classroom;
  @override
  @JsonKey(name: 'online_meeting_link')
  String? get onlineMeetingLink;
  @override
  @JsonKey(name: 'meeting_password')
  String? get meetingPassword;
  @override
  @JsonKey(name: 'schedule_notes')
  String? get scheduleNotes;
  @override
  @JsonKey(name: 'is_active', defaultValue: true)
  bool get isActive;
  @override
  @JsonKey(name: 'students', defaultValue: [])
  List<StudentModel> get students;
  @override
  GroupStatisticsModel get statistics;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of GroupDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDetailsModelImplCopyWith<_$GroupDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupStatisticsModel _$GroupStatisticsModelFromJson(Map<String, dynamic> json) {
  return _GroupStatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$GroupStatisticsModel {
  @JsonKey(name: 'monthly_attendance')
  MonthlyAttendanceModel get monthlyAttendance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_sessions')
  MonthlySessionsModel get monthlySessions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_revenue')
  double get monthlyRevenue => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_rate')
  double get attendanceRate => throw _privateConstructorUsedError;

  /// Serializes this GroupStatisticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupStatisticsModelCopyWith<GroupStatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStatisticsModelCopyWith<$Res> {
  factory $GroupStatisticsModelCopyWith(
    GroupStatisticsModel value,
    $Res Function(GroupStatisticsModel) then,
  ) = _$GroupStatisticsModelCopyWithImpl<$Res, GroupStatisticsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'monthly_attendance')
    MonthlyAttendanceModel monthlyAttendance,
    @JsonKey(name: 'monthly_sessions') MonthlySessionsModel monthlySessions,
    @JsonKey(name: 'monthly_revenue') double monthlyRevenue,
    @JsonKey(name: 'attendance_rate') double attendanceRate,
  });

  $MonthlyAttendanceModelCopyWith<$Res> get monthlyAttendance;
  $MonthlySessionsModelCopyWith<$Res> get monthlySessions;
}

/// @nodoc
class _$GroupStatisticsModelCopyWithImpl<
  $Res,
  $Val extends GroupStatisticsModel
>
    implements $GroupStatisticsModelCopyWith<$Res> {
  _$GroupStatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyAttendance = null,
    Object? monthlySessions = null,
    Object? monthlyRevenue = null,
    Object? attendanceRate = null,
  }) {
    return _then(
      _value.copyWith(
            monthlyAttendance: null == monthlyAttendance
                ? _value.monthlyAttendance
                : monthlyAttendance // ignore: cast_nullable_to_non_nullable
                      as MonthlyAttendanceModel,
            monthlySessions: null == monthlySessions
                ? _value.monthlySessions
                : monthlySessions // ignore: cast_nullable_to_non_nullable
                      as MonthlySessionsModel,
            monthlyRevenue: null == monthlyRevenue
                ? _value.monthlyRevenue
                : monthlyRevenue // ignore: cast_nullable_to_non_nullable
                      as double,
            attendanceRate: null == attendanceRate
                ? _value.attendanceRate
                : attendanceRate // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthlyAttendanceModelCopyWith<$Res> get monthlyAttendance {
    return $MonthlyAttendanceModelCopyWith<$Res>(_value.monthlyAttendance, (
      value,
    ) {
      return _then(_value.copyWith(monthlyAttendance: value) as $Val);
    });
  }

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthlySessionsModelCopyWith<$Res> get monthlySessions {
    return $MonthlySessionsModelCopyWith<$Res>(_value.monthlySessions, (value) {
      return _then(_value.copyWith(monthlySessions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupStatisticsModelImplCopyWith<$Res>
    implements $GroupStatisticsModelCopyWith<$Res> {
  factory _$$GroupStatisticsModelImplCopyWith(
    _$GroupStatisticsModelImpl value,
    $Res Function(_$GroupStatisticsModelImpl) then,
  ) = __$$GroupStatisticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'monthly_attendance')
    MonthlyAttendanceModel monthlyAttendance,
    @JsonKey(name: 'monthly_sessions') MonthlySessionsModel monthlySessions,
    @JsonKey(name: 'monthly_revenue') double monthlyRevenue,
    @JsonKey(name: 'attendance_rate') double attendanceRate,
  });

  @override
  $MonthlyAttendanceModelCopyWith<$Res> get monthlyAttendance;
  @override
  $MonthlySessionsModelCopyWith<$Res> get monthlySessions;
}

/// @nodoc
class __$$GroupStatisticsModelImplCopyWithImpl<$Res>
    extends _$GroupStatisticsModelCopyWithImpl<$Res, _$GroupStatisticsModelImpl>
    implements _$$GroupStatisticsModelImplCopyWith<$Res> {
  __$$GroupStatisticsModelImplCopyWithImpl(
    _$GroupStatisticsModelImpl _value,
    $Res Function(_$GroupStatisticsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyAttendance = null,
    Object? monthlySessions = null,
    Object? monthlyRevenue = null,
    Object? attendanceRate = null,
  }) {
    return _then(
      _$GroupStatisticsModelImpl(
        monthlyAttendance: null == monthlyAttendance
            ? _value.monthlyAttendance
            : monthlyAttendance // ignore: cast_nullable_to_non_nullable
                  as MonthlyAttendanceModel,
        monthlySessions: null == monthlySessions
            ? _value.monthlySessions
            : monthlySessions // ignore: cast_nullable_to_non_nullable
                  as MonthlySessionsModel,
        monthlyRevenue: null == monthlyRevenue
            ? _value.monthlyRevenue
            : monthlyRevenue // ignore: cast_nullable_to_non_nullable
                  as double,
        attendanceRate: null == attendanceRate
            ? _value.attendanceRate
            : attendanceRate // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupStatisticsModelImpl implements _GroupStatisticsModel {
  const _$GroupStatisticsModelImpl({
    @JsonKey(name: 'monthly_attendance') required this.monthlyAttendance,
    @JsonKey(name: 'monthly_sessions') required this.monthlySessions,
    @JsonKey(name: 'monthly_revenue') required this.monthlyRevenue,
    @JsonKey(name: 'attendance_rate') required this.attendanceRate,
  });

  factory _$GroupStatisticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupStatisticsModelImplFromJson(json);

  @override
  @JsonKey(name: 'monthly_attendance')
  final MonthlyAttendanceModel monthlyAttendance;
  @override
  @JsonKey(name: 'monthly_sessions')
  final MonthlySessionsModel monthlySessions;
  @override
  @JsonKey(name: 'monthly_revenue')
  final double monthlyRevenue;
  @override
  @JsonKey(name: 'attendance_rate')
  final double attendanceRate;

  @override
  String toString() {
    return 'GroupStatisticsModel(monthlyAttendance: $monthlyAttendance, monthlySessions: $monthlySessions, monthlyRevenue: $monthlyRevenue, attendanceRate: $attendanceRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStatisticsModelImpl &&
            (identical(other.monthlyAttendance, monthlyAttendance) ||
                other.monthlyAttendance == monthlyAttendance) &&
            (identical(other.monthlySessions, monthlySessions) ||
                other.monthlySessions == monthlySessions) &&
            (identical(other.monthlyRevenue, monthlyRevenue) ||
                other.monthlyRevenue == monthlyRevenue) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    monthlyAttendance,
    monthlySessions,
    monthlyRevenue,
    attendanceRate,
  );

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStatisticsModelImplCopyWith<_$GroupStatisticsModelImpl>
  get copyWith =>
      __$$GroupStatisticsModelImplCopyWithImpl<_$GroupStatisticsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupStatisticsModelImplToJson(this);
  }
}

abstract class _GroupStatisticsModel implements GroupStatisticsModel {
  const factory _GroupStatisticsModel({
    @JsonKey(name: 'monthly_attendance')
    required final MonthlyAttendanceModel monthlyAttendance,
    @JsonKey(name: 'monthly_sessions')
    required final MonthlySessionsModel monthlySessions,
    @JsonKey(name: 'monthly_revenue') required final double monthlyRevenue,
    @JsonKey(name: 'attendance_rate') required final double attendanceRate,
  }) = _$GroupStatisticsModelImpl;

  factory _GroupStatisticsModel.fromJson(Map<String, dynamic> json) =
      _$GroupStatisticsModelImpl.fromJson;

  @override
  @JsonKey(name: 'monthly_attendance')
  MonthlyAttendanceModel get monthlyAttendance;
  @override
  @JsonKey(name: 'monthly_sessions')
  MonthlySessionsModel get monthlySessions;
  @override
  @JsonKey(name: 'monthly_revenue')
  double get monthlyRevenue;
  @override
  @JsonKey(name: 'attendance_rate')
  double get attendanceRate;

  /// Create a copy of GroupStatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupStatisticsModelImplCopyWith<_$GroupStatisticsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MonthlyAttendanceModel _$MonthlyAttendanceModelFromJson(
  Map<String, dynamic> json,
) {
  return _MonthlyAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyAttendanceModel {
  int get total => throw _privateConstructorUsedError;
  int get present => throw _privateConstructorUsedError;
  int get late => throw _privateConstructorUsedError;
  int get absent => throw _privateConstructorUsedError;

  /// Serializes this MonthlyAttendanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyAttendanceModelCopyWith<MonthlyAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyAttendanceModelCopyWith<$Res> {
  factory $MonthlyAttendanceModelCopyWith(
    MonthlyAttendanceModel value,
    $Res Function(MonthlyAttendanceModel) then,
  ) = _$MonthlyAttendanceModelCopyWithImpl<$Res, MonthlyAttendanceModel>;
  @useResult
  $Res call({int total, int present, int late, int absent});
}

/// @nodoc
class _$MonthlyAttendanceModelCopyWithImpl<
  $Res,
  $Val extends MonthlyAttendanceModel
>
    implements $MonthlyAttendanceModelCopyWith<$Res> {
  _$MonthlyAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? present = null,
    Object? late = null,
    Object? absent = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            present: null == present
                ? _value.present
                : present // ignore: cast_nullable_to_non_nullable
                      as int,
            late: null == late
                ? _value.late
                : late // ignore: cast_nullable_to_non_nullable
                      as int,
            absent: null == absent
                ? _value.absent
                : absent // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthlyAttendanceModelImplCopyWith<$Res>
    implements $MonthlyAttendanceModelCopyWith<$Res> {
  factory _$$MonthlyAttendanceModelImplCopyWith(
    _$MonthlyAttendanceModelImpl value,
    $Res Function(_$MonthlyAttendanceModelImpl) then,
  ) = __$$MonthlyAttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int present, int late, int absent});
}

/// @nodoc
class __$$MonthlyAttendanceModelImplCopyWithImpl<$Res>
    extends
        _$MonthlyAttendanceModelCopyWithImpl<$Res, _$MonthlyAttendanceModelImpl>
    implements _$$MonthlyAttendanceModelImplCopyWith<$Res> {
  __$$MonthlyAttendanceModelImplCopyWithImpl(
    _$MonthlyAttendanceModelImpl _value,
    $Res Function(_$MonthlyAttendanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? present = null,
    Object? late = null,
    Object? absent = null,
  }) {
    return _then(
      _$MonthlyAttendanceModelImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        present: null == present
            ? _value.present
            : present // ignore: cast_nullable_to_non_nullable
                  as int,
        late: null == late
            ? _value.late
            : late // ignore: cast_nullable_to_non_nullable
                  as int,
        absent: null == absent
            ? _value.absent
            : absent // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyAttendanceModelImpl implements _MonthlyAttendanceModel {
  const _$MonthlyAttendanceModelImpl({
    required this.total,
    required this.present,
    required this.late,
    required this.absent,
  });

  factory _$MonthlyAttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyAttendanceModelImplFromJson(json);

  @override
  final int total;
  @override
  final int present;
  @override
  final int late;
  @override
  final int absent;

  @override
  String toString() {
    return 'MonthlyAttendanceModel(total: $total, present: $present, late: $late, absent: $absent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyAttendanceModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.absent, absent) || other.absent == absent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, present, late, absent);

  /// Create a copy of MonthlyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyAttendanceModelImplCopyWith<_$MonthlyAttendanceModelImpl>
  get copyWith =>
      __$$MonthlyAttendanceModelImplCopyWithImpl<_$MonthlyAttendanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyAttendanceModelImplToJson(this);
  }
}

abstract class _MonthlyAttendanceModel implements MonthlyAttendanceModel {
  const factory _MonthlyAttendanceModel({
    required final int total,
    required final int present,
    required final int late,
    required final int absent,
  }) = _$MonthlyAttendanceModelImpl;

  factory _MonthlyAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyAttendanceModelImpl.fromJson;

  @override
  int get total;
  @override
  int get present;
  @override
  int get late;
  @override
  int get absent;

  /// Create a copy of MonthlyAttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyAttendanceModelImplCopyWith<_$MonthlyAttendanceModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MonthlySessionsModel _$MonthlySessionsModelFromJson(Map<String, dynamic> json) {
  return _MonthlySessionsModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlySessionsModel {
  int get total => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  int get cancelled => throw _privateConstructorUsedError;

  /// Serializes this MonthlySessionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlySessionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlySessionsModelCopyWith<MonthlySessionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlySessionsModelCopyWith<$Res> {
  factory $MonthlySessionsModelCopyWith(
    MonthlySessionsModel value,
    $Res Function(MonthlySessionsModel) then,
  ) = _$MonthlySessionsModelCopyWithImpl<$Res, MonthlySessionsModel>;
  @useResult
  $Res call({int total, int completed, int cancelled});
}

/// @nodoc
class _$MonthlySessionsModelCopyWithImpl<
  $Res,
  $Val extends MonthlySessionsModel
>
    implements $MonthlySessionsModelCopyWith<$Res> {
  _$MonthlySessionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlySessionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? completed = null,
    Object? cancelled = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as int,
            cancelled: null == cancelled
                ? _value.cancelled
                : cancelled // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthlySessionsModelImplCopyWith<$Res>
    implements $MonthlySessionsModelCopyWith<$Res> {
  factory _$$MonthlySessionsModelImplCopyWith(
    _$MonthlySessionsModelImpl value,
    $Res Function(_$MonthlySessionsModelImpl) then,
  ) = __$$MonthlySessionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int completed, int cancelled});
}

/// @nodoc
class __$$MonthlySessionsModelImplCopyWithImpl<$Res>
    extends _$MonthlySessionsModelCopyWithImpl<$Res, _$MonthlySessionsModelImpl>
    implements _$$MonthlySessionsModelImplCopyWith<$Res> {
  __$$MonthlySessionsModelImplCopyWithImpl(
    _$MonthlySessionsModelImpl _value,
    $Res Function(_$MonthlySessionsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlySessionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? completed = null,
    Object? cancelled = null,
  }) {
    return _then(
      _$MonthlySessionsModelImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as int,
        cancelled: null == cancelled
            ? _value.cancelled
            : cancelled // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlySessionsModelImpl implements _MonthlySessionsModel {
  const _$MonthlySessionsModelImpl({
    required this.total,
    required this.completed,
    required this.cancelled,
  });

  factory _$MonthlySessionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlySessionsModelImplFromJson(json);

  @override
  final int total;
  @override
  final int completed;
  @override
  final int cancelled;

  @override
  String toString() {
    return 'MonthlySessionsModel(total: $total, completed: $completed, cancelled: $cancelled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlySessionsModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, completed, cancelled);

  /// Create a copy of MonthlySessionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlySessionsModelImplCopyWith<_$MonthlySessionsModelImpl>
  get copyWith =>
      __$$MonthlySessionsModelImplCopyWithImpl<_$MonthlySessionsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlySessionsModelImplToJson(this);
  }
}

abstract class _MonthlySessionsModel implements MonthlySessionsModel {
  const factory _MonthlySessionsModel({
    required final int total,
    required final int completed,
    required final int cancelled,
  }) = _$MonthlySessionsModelImpl;

  factory _MonthlySessionsModel.fromJson(Map<String, dynamic> json) =
      _$MonthlySessionsModelImpl.fromJson;

  @override
  int get total;
  @override
  int get completed;
  @override
  int get cancelled;

  /// Create a copy of MonthlySessionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlySessionsModelImplCopyWith<_$MonthlySessionsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
