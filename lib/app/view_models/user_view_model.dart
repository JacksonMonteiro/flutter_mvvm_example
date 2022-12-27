// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:mvvm/app/models/user_model.dart';

class UserViewModel {
  // Object
  final User _user;

  // Construtor
  UserViewModel(this._user);

  // Getters
  User get user => _user;

  // Controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Controller Methods
  void fillUsername() {
    _user.username = usernameController.text;
  }

  void fillPassword() {
    _user.password = passwordController.text;
  }
}
