// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_response.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

ErrorsResponse _$ErrorsResponseFromJson(Map<String, dynamic> json) {
  return new ErrorsResponse(
      errors: (json['errors'] as List)
          ?.map((e) => e == null
              ? null
              : new ErrorResponse.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$ErrorsResponseSerializerMixin {
  List<ErrorResponse> get errors;
  Map<String, dynamic> toJson() => <String, dynamic>{'errors': errors};
}
