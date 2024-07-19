import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/appPrimaryButton.dart';

import '../utils/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Align(
            alignment:Alignment.center,
          child:Text("Welcome to",
                style:TextStyle(
                      fontSize:16, 
                      fontWeight: FontWeight.normal
                ))),
          Align(
            alignment :Alignment.center,
            child:Text("Quiz App",
                style:TextStyle(
                      fontSize:24, 
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255,192,148,8)
                ))),
            SizedBox(height: AppSize.spacingbtwSectionLg),
            Text("Enter your username",style:TextStyle(
              fontSize: 14,
              color:Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: AppSize.spacingbtwItemSm),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              )
            ),
            SizedBox(height: AppSize.spacingbtwSectionMd),
            AppPrimaryButton(
              buttonText: "Let's start >>>",
              buttonColor: Color.fromARGB(255,192,148,8),
              textColor: Colors.white
            )

        ]
      ))
    );
  }
}