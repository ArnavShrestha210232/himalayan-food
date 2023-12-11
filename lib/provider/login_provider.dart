// import 'package:flutter/material.dart';

// class LoginProvider extends ChangeNotifier {
//   bool _isShowPassword = false;
//   bool _isConfrimPassword = false;
//   bool _isLogging = false;

//   bool get isShowPassword => _isShowPassword;
//   bool get isConfirmPassword => _isConfrimPassword;
//   bool get isLogging => _isLogging;

//   toggleIsShowPassword() {
//     _isShowPassword = !_isShowPassword;
//     notifyListeners();
//   }

//   toggleConfirmPassword() {
//     _isConfrimPassword = !_isConfrimPassword;
//     notifyListeners();
//   }

//   setLoggin(bool value) {
//     _isLogging = value;
//     notifyListeners();
//   }

//   void login() {
//     setLoggin(true);
//     Future.delayed(const Duration(seconds: 2), () {
//       setLoggin(false);
//     });
//   }

//   // setIsShowPassword(bool value) {
//   //   _isShowPassword = value;
//   //   notifyListeners();
//   // }
// }
