import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.onPressed, required this.text, this.width = 100});
final Function() onPressed;
final String text;
final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FloatingActionButton.extended(
        onPressed:  onPressed,
        label: Text(text),
        icon:Icon(Icons.arrow_forward_ios),
        )
    );
  }
}