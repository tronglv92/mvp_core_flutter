import 'package:json_annotation/json_annotation.dart';
part "file.g.dart";
@JsonSerializable()
class File extends Object with _$FileSerializerMixin{
  File({this.small_url,this.medium_url,this.large_url});
  @JsonKey(name: "large_url")
 final String large_url;
  @JsonKey(name: "medium_url")
  final String medium_url;
  @JsonKey(name: "small_url")
  final String small_url;
  factory File.fromJson(Map<String,dynamic> json)=> _$FileFromJson(json);
}