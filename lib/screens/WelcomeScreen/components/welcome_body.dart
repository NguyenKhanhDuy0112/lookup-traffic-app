import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/components/welcome_background.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeBodyState createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  @override
  Widget build(BuildContext context) {
    return const WelcomeBackground(child: Text('Welcome'));
  }
}
