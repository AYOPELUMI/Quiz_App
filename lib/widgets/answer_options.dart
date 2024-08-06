import 'package:flutter/material.dart';

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({
    super.key, required this.option, required this.index, required this.questionId, required this.onPressed,
  });
  final String option;
  final int index;
  final int questionId;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      decoration: BoxDecoration(
        border:Border.all(width: 3),
        borderRadius: BorderRadius.circular(12)
      ),
      child:Padding(
        padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text:'${index + 1}. ',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16),
                  children:[
                    TextSpan(text: '$option'),
                ])
              ),
              Container(
                height:30,
                width:30,
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    color:Colors.blue,
                    width:3 ),
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.check, color: Colors.white)
              )
            ],
          ),
      )
    );
  }
}
