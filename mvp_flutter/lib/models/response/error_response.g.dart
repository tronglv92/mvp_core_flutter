// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return new ErrorResponse(
      errorCode: json['errorCode'] as int,
      errorMessage: json['errorMessage'] as String);
}

abstract class _$ErrorResponseSerializerMixin {
  int get errorCode;
  String get errorMessage;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'errorCode': errorCode, 'errorMessage': errorMessage};
}
