import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/login_screen.dart';
import 'package:lookup_traffic_app/screens/HomeScreen/home_screen.dart';
import 'package:lookup_traffic_app/screens/OTPScreen/otp_screen.dart';
import 'package:lookup_traffic_app/screens/RegisterScreen/register_screen.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/welcome_screen.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String welcome = '/welcome';
  static const String home = '/post';
  static const String otp = '/otp';
  static const String register = '/register';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => const LoginScreen(),
    home: (BuildContext context) => const HomeScreen(),
    welcome: (BuildContext context) => const WelcomeScreen(),
    register: (BuildContext context) => const RegisterScreen(),
    otp: (BuildContext context) => const OtpScreen(),
  };
}
