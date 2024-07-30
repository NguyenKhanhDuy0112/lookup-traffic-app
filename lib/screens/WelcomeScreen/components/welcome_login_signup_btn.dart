import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/constants/theme.dart';

class WelcomeLoginAndSignupBtn extends StatelessWidget {
  const WelcomeLoginAndSignupBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushNamed(Routes.login,
            //     arguments: (Route<dynamic> route) => false);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            fixedSize: const Size(200, 50),
          ),
          child: Text(
            "Login".toUpperCase(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushNamed(Routes.register,
            //     arguments: (Route<dynamic> route) => false);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            elevation: 0,
            fixedSize: const Size(200, 50),
          ),
          child: Text(
            "Sign Up".toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
