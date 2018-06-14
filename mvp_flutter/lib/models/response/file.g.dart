// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) {
  return new File(
      small_url: json['small_url'] as String,
      medium_url: json['medium_url'] as String,
      large_url: json['large_url'] as String);
}

abstract class _$FileSerializerMixin {
  String get large_url;
  String get medium_url;
  String get small_url;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'large_url': large_url,
        'medium_url': medium_url,
        'small_url': small_url
      };
}
