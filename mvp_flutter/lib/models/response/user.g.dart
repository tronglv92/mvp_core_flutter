// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return new User(
      id: json['id'] as int,
      email: json['email'] as String,
      username: json['username'] as String,
      token: json['token'] as String);
}

abstract class _$UserSerializerMixin {
  int get id;
  String get email;
  String get username;
  String get token;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'email': email,
        'username': username,
        'token': token
      };
}
