import 'package:flutter/material.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
import 'package:mvp_flutter/models/response/login.dart';
import 'package:mvp_flutter/screens/login/login_presenter.dart';
import 'package:mvp_flutter/store_local/auth.dart';
import 'package:mvp_flutter/store_local/database_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen> implements LoginScreenContract,AuthStateListener{
  LoginScreenPresenter _presenter;
  BuildContext _ctx;
  bool _isLoading = false;
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  LoginScreenState(){
    _presenter=new LoginScreenPresenter(this);
    var authStateProvider = new AuthStateProvider();
    authStateProvider.subscribe(this);

  }
  final emailController = new TextEditingController();
  final passwordController=new TextEditingController();
  void _login()
  {
    _presenter.doLogin(emailController.text, passwordController.text);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _ctx = context;
    return new Scaffold(
      key: scaffoldKey,
      body: new Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text("Email"),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new TextField(
                style: new TextStyle(fontSize: 14.0, color: Colors.black),

                decoration: new InputDecoration(
                    hintText: "Email",
                    hintStyle: new TextStyle(
                        fontSize: 14.0, color: Colors.black),
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                        borderSide: new BorderSide(
                            width: 1.0, color: Colors.black)
                    ),
                    contentPadding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 10.0, right: 10.0)

                ),

                controller: emailController,
              ),
            ),
            new Text("Password"),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new TextField(
                style: new TextStyle(fontSize: 14.0, color: Colors.black,),
                decoration: new InputDecoration(
                  hintText: "Password",
                  hintStyle: new TextStyle(fontSize: 14.0, color: Colors.black),
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      borderSide: new BorderSide(
                          width: 1.0, color: Colors.black)
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                ),


                controller: passwordController,

              ),
            ),
            new Center(

              child: new RaisedButton(onPressed: _login,
                child: new Text("Login",style: new TextStyle(color: Colors.white),),
              color: Colors.blue,),
            ),

          ],
        ),
      ),
    );
  }
  void _showSnackBar(String text) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(text)));
  }
  @override
  void onLoginError(ErrorResponse error) {
    // TODO: implement onLoginError

    _showSnackBar(error.errorMessage);
    setState(() => _isLoading = false);
  }

  @override
  void onLoginSuccess(Login login) async {
    // TODO: implement onLoginSuccess
    _showSnackBar(login.user.token);
    setState(() => _isLoading = false);
    var db = new DatabaseHelper();
    await db.saveUser(login.user);
//    var authStateProvider = new AuthStateProvider();
//    authStateProvider.notify(AuthState.LOGGED_IN);
  }

  @override
  void onAuthStateChanged(AuthState state) {
    // TODO: implement onAuthStateChanged
    if(state == AuthState.LOGGED_IN)
      Navigator.of(_ctx).pushReplacementNamed("/home");
  }

}