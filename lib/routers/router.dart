import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/entry_point.dart';
import 'package:lookup_traffic_app/screens/HomeScreen/home_screen.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/login_screen.dart';
import 'package:lookup_traffic_app/routers/route_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case logInScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPoint(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const LoginScreen(),
      );
  }
}
