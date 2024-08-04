import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';
import 'package:shop/state/auth_state.dart';
import 'package:shop/service/api_service.dart';
import 'components/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ApiService _apiService = ApiService();

  String _phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    void handleLogin() async {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        try {
          final checkUser = await _apiService.checkUserExist(_phoneNumber);
          if (checkUser['data'] == true) {
            final requestOtp = await _apiService.requestOTP(_phoneNumber);
            Provider.of<AuthState>(context, listen: false)
                .setOtpToken(requestOtp['data']['token']);
            Provider.of<AuthState>(context, listen: false)
                .setPhoneNumber(_phoneNumber);
            Navigator.pushNamed(context, otpScreenRoute);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Account does not exist!'),
              ),
            );
          }
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to login!'),
            ),
          );
        }
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_dark.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text(
                    "Please login to your account",
                  ),
                  const SizedBox(height: defaultPadding),
                  LogInForm(
                    formKey: _formKey,
                    onSaved: (phoneNumber) {
                      _phoneNumber = phoneNumber!;
                    },
                  ),
                  SizedBox(
                    height:
                        size.height > 700 ? size.height * 0.1 : defaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: handleLogin,
                    child: const Text("Log in"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
