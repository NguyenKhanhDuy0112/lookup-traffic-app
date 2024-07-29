import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/constants/theme.dart';
import 'package:lookup_traffic_app/routers/routers.dart';
import 'package:lookup_traffic_app/screens/HomeScreen/home_screen.dart';
import 'package:lookup_traffic_app/screens/WelcomeScreen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: Routes.routes,
      home: const HomeScreen(),
    );
  }
}
