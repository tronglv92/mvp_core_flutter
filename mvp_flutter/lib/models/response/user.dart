import 'package:mvp_flutter/models/response/user.dart';
import 'package:json_annotation/json_annotation.dart';
part "user.g.dart";
@JsonSerializable()
class User extends Object with _$UserSerializerMixin{
  User({this.id,this.email,this.username,this.token});
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "username")
  final String username;
  @JsonKey(name: "token")
  final String token;
  factory User.fromJson(Map<String,dynamic> json)=> _$UserFromJson(json);
}