import 'package:flutter/material.dart';

class WelcomeBackground extends StatefulWidget {
  final Widget child;
  const WelcomeBackground({
    super.key,
    required this.child,
  });

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeBackgroundState createState() => _WelcomeBackgroundState();
}

class _WelcomeBackgroundState extends State<WelcomeBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ),
            ],
          )),
    );
  }
}
