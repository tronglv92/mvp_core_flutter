import 'package:flutter/material.dart';
import 'package:mvp_flutter/routes.dart';
import 'package:mvp_flutter/store_local/auth.dart';
import 'package:mvp_flutter/app_provider.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget implements AuthStateListener{
  // This widget is the root of your application.
  MyApp()
  {
    var authStateProvider = new AuthStateProvider();
    authStateProvider.subscribe(this);
  }
  @override
  Widget build(BuildContext context) {
    return new AppProvider(

      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        routes: routes,
      ),
    );
  }

  @override
  void onAuthStateChanged(AuthState state) {
    // TODO: implement onAuthStateChanged
    print(state);
  }
}


