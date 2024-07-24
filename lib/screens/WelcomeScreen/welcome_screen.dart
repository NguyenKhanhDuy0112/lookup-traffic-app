import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/components/welcome_body.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const WelcomeBody();
  }
}
