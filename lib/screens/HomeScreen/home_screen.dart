import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/routers/routers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    void handleLogout() {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Routes.login, (Route<dynamic> route) => false);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Home Screen'),
            ButtonBar(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    handleLogout();
                  },
                  child: const Text('Home'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
