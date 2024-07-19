import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class webLinkProvider extends ChangeNotifier{
  void LaunchWebsite()
  {
    Uri uri= Uri.parse('https://github.com/Yash-978');
    launchUrl(uri,mode: LaunchMode.inAppBrowserView);

  }
  void LaunchMail()
  {
    Uri uri= Uri.parse('https://github.com/Yash-978');
    launchUrl(uri,mode: LaunchMode.inAppBrowserView);

  }
  void LaunchPhone()
  {
    Uri uri= Uri.parse('tel:9537721511');
    launchUrl(uri);

  }
  // void LaunchPhone()
  // {
  //   Uri uri= Uri.parse('tel:9537721511');
  //   launchUrl(uri);
  //
  // }

}