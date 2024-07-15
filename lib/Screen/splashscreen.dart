import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/utils/constants/appimage.dart';
import 'package:quiz_app/utils/constants/constant.dart';

import '../Controllers/splashcontroller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return  Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.splashImage),
            Text(appName,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold
            ),
            )
          ],
        )
      )
    );
  }
}