import 'package:freezed_annotation/freezed_annotation.dart';
import 'payment_model.dart';

part 'payments_response_model.freezed.dart';
part 'payments_response_model.g.dart';

@freezed
class PaymentsResponseModel with _$PaymentsResponseModel {
  const factory PaymentsResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<PaymentModel> results,
  }) = _PaymentsResponseModel;

  factory PaymentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentsResponseModelFromJson(json);
}
