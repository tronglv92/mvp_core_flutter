
import 'package:json_annotation/json_annotation.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
part "package:mvp_flutter/models/response/errors_response.g.dart";
@JsonSerializable()
class ErrorsResponse extends Object with _$ErrorsResponseSerializerMixin{
  @JsonKey(name: "errors")
  final List<ErrorResponse> errors;
  ErrorsResponse({this.errors});


  factory ErrorsResponse.fromJson(Map<String,dynamic> json)=> _$ErrorsResponseFromJson(json);
}