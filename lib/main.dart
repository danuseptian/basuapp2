import 'package:basuapp/utility/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'module/login/view/login_view.dart';
import 'utility/widget/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      // home: const MainNavigationView(),
      home: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 2),
        ),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }
          return const LoginView();
        },
      ),
    );
  }
}
