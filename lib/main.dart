import 'package:adv_flutter_ch1/Screens/HomeScreen/HomePageView/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/HomeScreen/HomeProvider/homeProvider.dart';

import 'Screens/OnboardingScreen/onBoardingPage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final onBoarding = await SharedPreferences.getInstance();
  final showHome = onBoarding.getBool('showHome') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => Homeprovider(),
      builder: (context, child) => MyApp(showHome: showHome),
    ),
  );
  // runApp(MyApp(showHome : showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: AppRoutes.routes,
      home: showHome ? Homepage() : OnboardingPage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<Homeprovider>(context).isLight
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}
