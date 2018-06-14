
import 'package:json_annotation/json_annotation.dart';
part "login_request.g.dart";
@JsonSerializable()
class LoginRequest extends Object with _$LoginRequestSerializerMixin{
  LoginRequest({this.email,this.password,this.device_token,this.device_platform});
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "password")
  final String password;
  @JsonKey(name: "device_platform")
  final String device_platform;
  @JsonKey(name:"device_token")
  final String device_token;
  factory LoginRequest.fromJson(Map<String,dynamic> json)=> _$LoginRequestFromJson(json);
}