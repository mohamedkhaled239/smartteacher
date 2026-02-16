// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materials_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MaterialsResponseModel _$MaterialsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _MaterialsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MaterialsResponseModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<MaterialModel> get results => throw _privateConstructorUsedError;

  /// Serializes this MaterialsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaterialsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaterialsResponseModelCopyWith<MaterialsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialsResponseModelCopyWith<$Res> {
  factory $MaterialsResponseModelCopyWith(
    MaterialsResponseModel value,
    $Res Function(MaterialsResponseModel) then,
  ) = _$MaterialsResponseModelCopyWithImpl<$Res, MaterialsResponseModel>;
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<MaterialModel> results,
  });
}

/// @nodoc
class _$MaterialsResponseModelCopyWithImpl<
  $Res,
  $Val extends MaterialsResponseModel
>
    implements $MaterialsResponseModelCopyWith<$Res> {
  _$MaterialsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            previous: freezed == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<MaterialModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaterialsResponseModelImplCopyWith<$Res>
    implements $MaterialsResponseModelCopyWith<$Res> {
  factory _$$MaterialsResponseModelImplCopyWith(
    _$MaterialsResponseModelImpl value,
    $Res Function(_$MaterialsResponseModelImpl) then,
  ) = __$$MaterialsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<MaterialModel> results,
  });
}

/// @nodoc
class __$$MaterialsResponseModelImplCopyWithImpl<$Res>
    extends
        _$MaterialsResponseModelCopyWithImpl<$Res, _$MaterialsResponseModelImpl>
    implements _$$MaterialsResponseModelImplCopyWith<$Res> {
  __$$MaterialsResponseModelImplCopyWithImpl(
    _$MaterialsResponseModelImpl _value,
    $Res Function(_$MaterialsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaterialsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(
      _$MaterialsResponseModelImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        previous: freezed == previous
            ? _value.previous
            : previous // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<MaterialModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialsResponseModelImpl implements _MaterialsResponseModel {
  const _$MaterialsResponseModelImpl({
    required this.count,
    this.next,
    this.previous,
    required final List<MaterialModel> results,
  }) : _results = results;

  factory _$MaterialsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialsResponseModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<MaterialModel> _results;
  @override
  List<MaterialModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MaterialsResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialsResponseModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    next,
    previous,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of MaterialsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialsResponseModelImplCopyWith<_$MaterialsResponseModelImpl>
  get copyWith =>
      __$$MaterialsResponseModelImplCopyWithImpl<_$MaterialsResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialsResponseModelImplToJson(this);
  }
}

abstract class _MaterialsResponseModel implements MaterialsResponseModel {
  const factory _MaterialsResponseModel({
    required final int count,
    final String? next,
    final String? previous,
    required final List<MaterialModel> results,
  }) = _$MaterialsResponseModelImpl;

  factory _MaterialsResponseModel.fromJson(Map<String, dynamic> json) =
      _$MaterialsResponseModelImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<MaterialModel> get results;

  /// Create a copy of MaterialsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialsResponseModelImplCopyWith<_$MaterialsResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
