import 'package:mvp_flutter/models/response/login.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
import 'package:mvp_flutter/screens/login/login_services.dart';
import 'package:mvp_flutter/models/request/login_request.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(Login login);

  void onLoginError(ErrorResponse error);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  LoginServices api = new LoginServices();

  LoginScreenPresenter(this._view);

  doLogin(String email, String password) {
    LoginRequest loginRequest = new LoginRequest(email: email,
        password: password,
        device_token: "a437dd18254449779569cc1322a87791a426ad0c3e33aaf92379fac65d89758e",
      device_platform: "ios"
    );
    api.login(loginRequest).then((Login login){
      _view.onLoginSuccess(login);
    }).catchError((Object error){
      ErrorResponse errorResponse=error;
      _view.onLoginError(errorResponse);
    });
  }

}