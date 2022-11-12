import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier {
  String _name = "";

  String get getName => _name;

  set setName(String name) {
    _name = name;
    notifyListeners();
  }
}
