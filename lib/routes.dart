import 'package:flutter/material.dart';
import 'package:pg1/pages/login_page.dart';
import 'package:pg1/pages/signup_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    LoginPage.routeName: (context) => const LoginPage(),
    SignupPage.routeName: (context) => const SignupPage(),
  };
}
