// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controllers/questionController.dart';
import 'package:quiz_app/widgets/appPrimaryButton.dart';

import '../routes/routes.dart';
import '../utils/constants/sizes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  _submit(BuildContext context){
    FocusScope.of(context).unfocus();
    if(!_formKey.currentState!.validate()) return;
    Get.offAndToNamed(Routes.gameScreenRoute);
    Get.find<QuestionController>().startTimer();
  }

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
            Form(
              key: _formKey,
              child: GetBuilder<QuestionController>(
                init: Get.find<QuestionController>(),
                builder: (controller) => TextFormField(
                  controller : controller.nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.borderRadiusSm),
                      borderSide: BorderSide(width: 2.0),
                    )
                  ),
                  validator: (String? val){
                    if(val!.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  onSaved: (newValue){
                    controller.name= newValue!.trim().toUpperCase();
                  },
                  onFieldSubmitted: (value) => _submit(context),
                  ),
                ),
            ),
            SizedBox(height: AppSize.spacingbtwSectionMd),
            AppPrimaryButton(
              onTap:(){
                _submit(context);
              },
              buttonText: "Let's start >>>",
              buttonColor: Color.fromARGB(255,192,148,8),
              textColor: Colors.white
            )

        ]
      ))
    );
  }
}