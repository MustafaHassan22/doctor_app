import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  @JsonKey(name: 'data')
  UserDate? userDate;
  bool? status;
  int? code;
  SignUpResponse({this.message, this.userDate, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserDate {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserDate({this.token, this.userName});

  factory UserDate.fromJson(Map<String, dynamic> json) =>
      _$UserDateFromJson(json);
}
