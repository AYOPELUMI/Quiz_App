import 'package:flutter/material.dart';

import '../utils/constants/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBg,
        title: Text(appName,
        style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white))
      )
    );
  }
}