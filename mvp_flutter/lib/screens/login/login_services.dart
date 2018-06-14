import 'dart:async';
import 'dart:convert';
import 'package:mvp_flutter/services/network_util.dart';
import 'package:mvp_flutter/models/response/login.dart';
import 'package:mvp_flutter/models/request/login_request.dart';
import 'package:mvp_flutter/constant/variables.dart';
class LoginServices {
  NetworkUtil _netUtil = new NetworkUtil();

  static final LOGIN_URL = Variables.BASE_URL + "/auth/signIn";


  Future<Login> login(LoginRequest loginRequest) {
    return _netUtil.post(LOGIN_URL, body: json.encode(loginRequest)).then((dynamic res) {
//      print(res.toString());
//      if(res["error"]) throw new Exception(res["error_msg"]);
      return new Login.fromJson(res);
    }).catchError((Object error)
    {
      throw error;
    }
    );
  }
}