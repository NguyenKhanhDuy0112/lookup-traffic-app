import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/components/login_button.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/components/login_input_field.dart';

class LoginInputWrapper extends StatelessWidget {
  const LoginInputWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const LoginInputField(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 40,
          ),
          const LoginButton()
        ],
      ),
    );
  }
}
