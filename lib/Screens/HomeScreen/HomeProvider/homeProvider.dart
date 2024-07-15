import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier
{
  bool isLight=false;
  bool isColor=false;
  void changeTheme()
  {
    isLight=!isLight;
    isColor=!isColor;

    notifyListeners();
  }
  // late SharedPreferences sharedPreferences;
  // void setThemes()
  // {
  //   sharedPreferences = SharedPreferences.
  // }

}