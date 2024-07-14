
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/HomeScreen/HomeProvider/homeProvider.dart';

import 'Utils/routes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => Homeprovider(),
        builder: (context, child) => MyApp()),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      // home: OnboardingPage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<Homeprovider>(context).isLight
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}
