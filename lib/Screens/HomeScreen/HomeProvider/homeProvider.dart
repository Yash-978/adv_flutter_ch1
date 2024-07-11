import 'package:flutter/material.dart';
class Homeprovider extends ChangeNotifier
{
  bool isLight=false;
  void changeTheme()
  {
    isLight!=isLight;
    notifyListeners();
  }

}