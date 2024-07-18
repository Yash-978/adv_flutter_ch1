import 'package:adv_flutter_ch1/Screens/HomeScreen/HomePageView/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/HomeScreen/HomeProvider/homeProvider.dart';

import 'Screens/OnboardingScreen/onBoardingPage.dart';
import 'Screens/PhotoGalleryApp/photoGalleryProvider/photoGallery_provider.dart';
import 'Screens/PhotoGalleryApp/photoGallery_View/photoGallery_View.dart';
import 'Screens/QuoteScreen/QuoteProvider/quoteProvider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final onBoarding = await SharedPreferences.getInstance();
  final showHome = onBoarding.getBool('showHome') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GalleryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => QuoteProvider(),
        ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
  // runApp(MyApp(showHome : showHome));
}

class MyApp extends StatelessWidget {
  // final bool showHome;

  const MyApp({
    Key? key,
    // required this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GalleryProvider photoGalleryProviderTrue =
        Provider.of<GalleryProvider>(context, listen: true);
    GalleryProvider photoGalleryProviderFalse =
        Provider.of<GalleryProvider>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: PhotoGalleryView(),
      // home: showHome ? Homepage() : OnboardingPage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<Homeprovider>(context).isLight
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}
