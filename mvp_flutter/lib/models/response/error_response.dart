import 'package:json_annotation/json_annotation.dart';
part "package:mvp_flutter/models/response/error_response.g.dart";
@JsonSerializable()
class ErrorResponse extends Object with _$ErrorResponseSerializerMixin{
  ErrorResponse({this.errorCode,this.errorMessage});
  @JsonKey(name: "errorCode")
  final int errorCode;
  @JsonKey(name: "errorMessage")
  final String errorMessage;
  factory ErrorResponse.fromJson(Map<String,dynamic> json)=> _$ErrorResponseFromJson(json);
}