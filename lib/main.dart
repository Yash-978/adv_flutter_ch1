import 'package:adv_flutter_ch1/Screens/HomeScreen/HomePageView/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/HomeScreen/HomeProvider/homeProvider.dart';
import 'Utils/routes.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:  (context) =>  Homeprovider(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // routes: AppRoutes.routes,
        home: Homepage(),
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        // themeMode:homeproviderTrue.isLight ? ThemeMode.light:ThemeMode.dark,

      ),
    );
  }
}
