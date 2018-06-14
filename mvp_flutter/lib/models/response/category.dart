import 'package:mvp_flutter/models/response/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mvp_flutter/models/response/file.dart';
part "category.g.dart";
@JsonSerializable()
class Category extends Object with _$CategorySerializerMixin{
  Category({this.id,this.name,this.files});
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "files")
  final List<File> files;
  factory Category.fromJson(Map<String,dynamic> json)=> _$CategoryFromJson(json);
}