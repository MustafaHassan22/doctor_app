import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  UserDate? userDate;
  String? status;
  int? code;

  LoginResponse({this.message, this.userDate, this.status, this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
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
