// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return new LoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      device_token: json['device_token'] as String,
      device_platform: json['device_platform'] as String);
}

abstract class _$LoginRequestSerializerMixin {
  String get email;
  String get password;
  String get device_platform;
  String get device_token;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email': email,
        'password': password,
        'device_platform': device_platform,
        'device_token': device_token
      };
}
