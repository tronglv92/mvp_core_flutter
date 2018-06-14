import 'package:flutter/material.dart';
import 'package:mvp_flutter/screens/login/login_screen.dart';
import 'package:mvp_flutter/screens/home/home_screen.dart';
final routes={
  '/': (BuildContext context)=>new LoginScreen(),
  '/home':         (BuildContext context) => new HomeScreen(),
  '/login':(BuildContext context)=>new LoginScreen()
};