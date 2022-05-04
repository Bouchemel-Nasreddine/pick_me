import 'package:flutter/material.dart';
import 'package:pick_me/configs/const.dart';
import 'package:pick_me/configs/size_config.dart';
import 'package:pick_me/viewmodels/splash_viewmodel.dart';
import 'package:pick_me/views/phone_login_view.dart';
import 'package:pick_me/views/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: iris,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/phoneLogin': (context) => const PhoneLogin(),
      },
    );
  }
}
