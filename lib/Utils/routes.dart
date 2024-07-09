import 'package:flutter/material.dart';

import '../Screens/stepper_example.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => StepperForm1(),


  };
}