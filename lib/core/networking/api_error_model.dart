import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;
  final int? code;

  ApiErrorModel({this.message, this.errors, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  ///Returns a string contain all error messages
  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) return message ?? 'Unkown Error occurred';

    final errorMessage = errors!.entries
        .map((entry) {
          final value = entry.value;
          return "${value.join(',')}";
        })
        .join('\n');

    return errorMessage;
  }
}
