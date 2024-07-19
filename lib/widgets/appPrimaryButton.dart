import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants/sizes.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
      super.key,
      required this.buttonText, 
      required this.buttonColor, 
      required this.textColor});


  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: AppSize.buttonHeight,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(AppSize.borderRadiusXs),
              ),
              child:Center(
                child:Text(buttonText,style: TextStyle(
                  color: textColor
                )))
            );
  }
}