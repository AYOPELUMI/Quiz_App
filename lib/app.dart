import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Screen/welcomescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: const WelcomeScreen(),
    );
  }
}