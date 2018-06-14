// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return new Category(
      id: json['id'] as int,
      name: json['name'] as String,
      files: (json['files'] as List)
          ?.map((e) =>
              e == null ? null : new File.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$CategorySerializerMixin {
  int get id;
  String get name;
  List<File> get files;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'id': id, 'name': name, 'files': files};
}
