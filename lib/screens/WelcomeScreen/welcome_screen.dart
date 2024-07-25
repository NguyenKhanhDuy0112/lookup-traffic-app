import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/components/responsive.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/components/welcome_background.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/components/welcome_login_signup_btn.dart';
import 'components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomeBackground(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            mobile: MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: WelcomeLoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
