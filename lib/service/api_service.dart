import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shop/models/user_profile_model.dart';

class ApiService {
  static const String _baseUrl =
      'http://103.82.25.242:3200/api/v1'; // Replace with your API URL

  Future<UserProfile> getProfile(String token) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/user/profile'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    final responseBody = jsonDecode(response.body);

    return UserProfile.fromJson(responseBody['data']);
  }

  Future<dynamic> otpLogin(Map<String, String> loginData) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/auth/otp-login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(loginData),
    );

    final responseBody = jsonDecode(response.body);
    return responseBody;
  }

  Future<dynamic> requestOTP(String phoneNumber) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/auth/request-otp'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'phone': phoneNumber}),
    );

    final responseBody = jsonDecode(response.body);
    return responseBody;
  }

  Future<dynamic> checkUserExist(String phoneNumber) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/auth/check-user-exist'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'phone': phoneNumber}),
    );
    final responseBody = jsonDecode(response.body);
    return responseBody;
  }
}
