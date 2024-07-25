import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/components/login_header.dart';
import 'package:lookup_traffic_app/screens/LoginScreen/components/login_input_wrapper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.blue, Colors.lightBlueAccent, Colors.cyanAccent]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            const LoginHeader(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: const LoginInputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
