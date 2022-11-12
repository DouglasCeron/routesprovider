import 'package:flutter/material.dart';
import 'package:routesprovider/presentation/home/home_page.dart';
import 'package:routesprovider/presentation/login/login_page.dart';
import 'package:routesprovider/presentation/settings/settings_page.dart';

class RouteManager {
  static const loginPage = '/';
  static const homePage = '/homePage';
  static const settingsPage = '/settingPage';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );

      default:
        throw const FormatException('Route not found, check route again');
    }
  }
}
