import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class PhotoGalleryProvider extends ChangeNotifier {
  var auth = LocalAuthentication();
  Future<void> checkAuthentication() async {
    final auth = LocalAuthentication();
    final isAvailable = await auth.canCheckBiometrics;
    final isDeviceSupported = await auth.isDeviceSupported();
  }

}
