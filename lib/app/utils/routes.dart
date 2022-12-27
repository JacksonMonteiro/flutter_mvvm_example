import 'package:flutter/material.dart';
import 'package:mvvm/app/views/home_view.dart';
import 'package:mvvm/app/views/response_view.dart';

class Routes {
  // Singleton Pattern
  static final Routes instance = Routes._();
  Routes._();

  // Routes
  static const String home = '/';
  static const String response = '/response';

  String get initalRoute => home;

  Map<String, Widget Function(BuildContext)> get routes {
    return {
      home: (context) => const HomeView(),
      response: (context) => const ResponseView()
    };
  }
}