import 'package:flutter/material.dart';
import 'screen_export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case logInScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPoint(),
      );
    case profileScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );
    case driverLicenseScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const DriverLicenseScreen(),
      );
    case trafficeViolationScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const TrafficViolationScreen(),
      );
    case vehicleScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const VehicleScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const LoginScreen(),
      );
  }
}
