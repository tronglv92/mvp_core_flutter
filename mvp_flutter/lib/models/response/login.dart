import 'package:mvp_flutter/models/response/user.dart';
import 'package:json_annotation/json_annotation.dart';
part "package:mvp_flutter/models/response/login.g.dart";
@JsonSerializable()
class Login extends Object with _$LoginSerializerMixin{
  Login({this.user});
  @JsonKey(name: "data")
  final User user;
  factory Login.fromJson(Map<String,dynamic> json)=> _$LoginFromJson(json);
}