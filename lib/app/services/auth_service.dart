// ignore_for_file: avoid_print

import 'package:mvvm/app/models/user_model.dart';

class AuthService {
  bool doAuth(User user) {
    if (user.username == 'jackson' && user.password == '1234') {
      return true;
    } else {
      return false;
    }
  }
}