import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Screen/splashscreen.dart';

import 'Bindings/bindings.dart';
import 'Screen/gamescreen.dart';
import 'Screen/gamestatus.dart';
import 'Screen/welcomescreen.dart';
import 'routes/routes.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialBinding: MyBindings(),
      getPages: [
        GetPage(name: Routes.welcomeScreenRoute, page : () => WelcomeScreen()),
        GetPage(name: Routes.gameScreenRoute, page : () => GameScreen()),
        GetPage(name: Routes.gameStatusRoute, page : () => GameStatus())

      ],
      home: SplashScreen(),
    );
  }
}