import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvp_flutter/models/response/errors_response.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
import 'dart:io';

import 'package:mvp_flutter/store_local/auth.dart';
class NetworkUtil {
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();
  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  final JsonDecoder _decoder = new JsonDecoder();
  var headers={
    HttpHeaders.CONTENT_TYPE:"application/json"
  };

  Future<dynamic> get(String url) {
    if(headers!=null)
      this.headers.addAll(headers);
    return http.get(url,headers: this.headers).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;
      print("=====================================================");
      print("Header");
      print(this.headers);
      print("response");
      print(response.body);
      print("=====================================================");
      if (statusCode < 200 || statusCode > 400 || json == null) {
        ErrorsResponse response=ErrorsResponse.fromJson(_decoder.convert(res));
        if(response.errors!=null && response.errors.length>0)
        {
          throw response.errors[0];
        }
        else
        {
          throw new ErrorResponse(errorCode: 9999,errorMessage: "Error when fetching data");
        }
      }
      return _decoder.convert(res);
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) {
    if(headers!=null)
      this.headers.addAll(headers);
    return http
        .post(url, body: body, headers: this.headers, encoding: encoding)
        .then((http.Response response) {
      print("=====================================================");
      print("Header");
      print(this.headers);
      print("body");
      print(body);
      print("response");
      print(response.body);
      print("=====================================================");
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        ErrorsResponse response=ErrorsResponse.fromJson(_decoder.convert(res));
        if(response.errors!=null && response.errors.length>0)
        {
          throw response.errors[0];
        }
        else
        {
          throw new ErrorResponse(errorCode: 9999,errorMessage: "Error when fetching data");
        }


      }
      var authStateProvider = new AuthStateProvider();
      authStateProvider.notify(AuthState.LOGGED_IN);
      return _decoder.convert(res);
    });
  }
}