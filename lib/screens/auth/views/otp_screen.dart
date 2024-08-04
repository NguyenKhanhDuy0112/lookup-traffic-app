import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/constants.dart';
import 'package:shop/state/auth_state.dart';
import 'package:shop/service/api_service.dart';
import 'package:shop/route/route_constants.dart';
import 'dart:async';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final ApiService _apiService = ApiService();
  Timer? _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
    for (int i = 0; i < _otpControllers.length; i++) {
      _otpControllers[i].addListener(() {
        if (_otpControllers[i].text.length == 1) {
          if (i < _otpControllers.length - 1 &&
              _otpControllers[i + 1].text.isEmpty) {
            FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
          } else {
            _focusNodes[i].unfocus();
          }
        }
      });
    }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void resendOtp() async {
    try {
      final authState = Provider.of<AuthState>(context, listen: false);
      await _apiService.requestOTP(authState.phoneNumber!);
      setState(() {
        _start = 60;
      });
      startTimer();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to resend OTP!'),
        ),
      );
    }
  }

  void handleSubmit() async {
    final authState = Provider.of<AuthState>(context, listen: false);
    String otp = _otpControllers.map((controller) => controller.text).join();
    try {
      final loginOtp = await _apiService.otpLogin({
        'phone': authState.phoneNumber!,
        'otp': otp,
        'otp_token': authState.otpToken!,
      });
      authState.setToken(loginOtp['data']['access_token']);
      final profile =
          await _apiService.getProfile(loginOtp['data']['access_token']);
      authState.setUserProfile(profile);
      Navigator.pushNamedAndRemoveUntil(
        context,
        entryPointScreenRoute,
        (Route<dynamic> route) => false,
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to login!'),
        ),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/otp_dark.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text(
                    "We have sent an OTP to your phone number.",
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(6, (index) {
                      return SizedBox(
                        width: size.width * 0.12,
                        child: TextField(
                          controller: _otpControllers[index],
                          focusNode: _focusNodes[index],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              if (index < 5) {
                                FocusScope.of(context)
                                    .requestFocus(_focusNodes[index + 1]);
                              } else {
                                _focusNodes[index].unfocus();
                              }
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context)
                                  .requestFocus(_focusNodes[index - 1]);
                            }
                          },
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: defaultPadding),
                  if (_start > 0)
                    Text("Resend OTP in $_start seconds")
                  else
                    TextButton(
                      onPressed: resendOtp,
                      child: const Text("Resend OTP"),
                    ),
                  const SizedBox(height: defaultPadding),
                  ElevatedButton(
                    onPressed: handleSubmit,
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
