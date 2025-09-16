import 'package:cryptoui/screens/crypto_app.dart';
import 'package:cryptoui/screens/login_screen.dart';
import 'package:cryptoui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF2C013A)),
      debugShowCheckedModeBanner: false,
      // home: WelcomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => WelcomeScreen(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: '/home',
          page: () => CryptoApp(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(milliseconds: 400),
        ),
      ],
    );
  }
}
