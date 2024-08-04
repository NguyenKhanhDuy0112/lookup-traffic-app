import 'package:flutter/material.dart';
import 'package:shop/models/user_profile_model.dart';

class AuthState with ChangeNotifier {
  String? _token;
  String? _otpToken;
  String? _phoneNumber;
  String? _otp;
  UserProfile? _userProfile; // Use dynamic for user profile

  String? get token => _token;
  String? get otpToken => _otpToken;
  String? get phoneNumber => _phoneNumber;
  String? get otp => _otp;
  UserProfile? get userProfile => _userProfile;

  void setToken(String token) {
    _token = token;
    notifyListeners();
  }

  void setOtpToken(String otpToken) {
    _otpToken = otpToken;
    notifyListeners();
  }

  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  void setOtp(String otp) {
    _otp = otp;
    notifyListeners();
  }

  void setUserProfile(UserProfile profile) {
    // Setter for user profile
    _userProfile = profile;
    notifyListeners();
  }

  void clearToken() {
    _token = null;
    notifyListeners();
  }

  void clearUserProfile() {
    // Clear user profile
    _userProfile = null;
    notifyListeners();
  }
}
