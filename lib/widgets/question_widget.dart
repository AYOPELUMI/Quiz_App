import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Controllers/questionController.dart';

import 'answer_options.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.questionModel
  });
  final questionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(questionModel.question),
            const Spacer(
              flex: 1
            ),
            ...List.generate(
            questionModel.options.length,
            (index) => Column(children: [
              AnswerOptions(
                questionId: questionModel.id,
                option: questionModel.options[index],
                index: index,
                onPressed : () => Get.find<QuestionController>().checkAnswer(questionModel, index)
              ),
              SizedBox(height:16)
            ],)
            ),
            const Spacer(
              flex: 1
            ),
          ]
        ),
      ),
    );
  }
}

