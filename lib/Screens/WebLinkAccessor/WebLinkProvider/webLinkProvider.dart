import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// class webLinkProvider extends ChangeNotifier{
//   void LaunchWebsite()
//   {
//     Uri uri= Uri.parse('https://github.com/Yash-978');
//     launchUrl(uri,mode: LaunchMode.inAppBrowserView);
//
//   }
//   void LaunchMail()
//   {
//     Uri uri= Uri.parse('https://github.com/Yash-978');
//     launchUrl(uri,mode: LaunchMode.inAppBrowserView);
//
//   }
//   void LaunchPhone()
//   {
//     Uri uri= Uri.parse('tel:9537721511');
//     launchUrl(uri);
//
//   }
//   // void LaunchPhone()
//   // {
//   //   Uri uri= Uri.parse('tel:9537721511');
//   //   launchUrl(uri);
//   //
//   // }
//
// }
class LauncherProvider extends ChangeNotifier{

  void phoneLauncher()
  {
    Uri uri = Uri.parse('tel: +91 9537721511');
    launchUrl(uri);
  }
  void mailLauncher()
  {
    Uri uri = Uri.parse('mailto: virwalyash@gmail.com');
    launchUrl(uri);
  }
  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/yash-jain-9a84a7230?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://www.instagram.com/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void gitLauncher()
  {
    Uri uri = Uri.parse('https://github.com/Yash-978');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }

}