import 'package:flutter/material.dart';

class SettingsData extends ChangeNotifier {
  Color _appColor = Colors.blue;

  Color get appColor => _appColor;

  set appColorSet(Color newColor) {
    _appColor = newColor;
    notifyListeners();
  }
}
