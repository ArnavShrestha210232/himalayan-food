import 'package:flutter/material.dart';

class PasswordProvider extends ChangeNotifier {
  bool _isShowPassword = true;
  bool _isLoggingin = false;

  bool get isShowPassword => _isShowPassword;
  bool get isLogginging => _isLoggingin;

  showPassword() {
    _isShowPassword = !_isShowPassword;
    notifyListeners();
  }

  setLoggin(bool value) {
    _isLoggingin = value;
    print(_isLoggingin);
    notifyListeners();
  }

  Future<void> login() async {
    setLoggin(true);
    await Future.delayed(Duration(seconds: 2));
    setLoggin(false);
  }
}
