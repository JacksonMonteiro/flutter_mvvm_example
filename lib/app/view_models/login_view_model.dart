import 'package:flutter/material.dart';
import 'package:mvvm/app/models/user_model.dart';
import 'package:mvvm/app/services/auth_service.dart';

class LoginViewModel with ChangeNotifier {
  bool response = false;
  doAuth(User user) {
      response = AuthService().doAuth(user);
      if (response) {
        notifyListeners();  
      }
    }
}