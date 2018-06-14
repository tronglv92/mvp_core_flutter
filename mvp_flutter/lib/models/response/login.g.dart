// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return new Login(
      user: json['data'] == null
          ? null
          : new User.fromJson(json['data'] as Map<String, dynamic>));
}

abstract class _$LoginSerializerMixin {
  User get user;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': user};
}
