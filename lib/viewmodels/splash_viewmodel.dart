import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  goToPhoneLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/phoneLogin');
  }
}
