import 'package:flutter/material.dart';

import '../Screens/HomeScreen/HomePageView/homePage.dart';
import '../Screens/OnboardingScreen/onBoardingPage.dart';


class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/': (context) => StepperForm1(),
    '/': (context) => OnboardingPage(),
    '/home': (context) => Homepage(),


  };
}