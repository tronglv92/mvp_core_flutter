// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return new Categories(
      data: (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : new Category.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

abstract class _$CategoriesSerializerMixin {
  List<Category> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}
