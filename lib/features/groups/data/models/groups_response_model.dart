import 'package:freezed_annotation/freezed_annotation.dart';
import 'group_model.dart';

part 'groups_response_model.freezed.dart';
part 'groups_response_model.g.dart';

@freezed
class GroupsResponseModel with _$GroupsResponseModel {
  const factory GroupsResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<GroupModel> results,
  }) = _GroupsResponseModel;

  factory GroupsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GroupsResponseModelFromJson(json);
}
