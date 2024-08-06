import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/questionController.dart';
import '../widgets/custombutton.dart';
import '../widgets/progress_timer.dart';
import '../widgets/question_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SafeArea(
            child: GetBuilder<QuestionController>(
              init:QuestionController(),
              builder: (controller) => Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: 
                                TextSpan(
                                  text: "Question ",
                                  style: Theme.of(context).textTheme.headlineMedium,
                                  children:[
                                    TextSpan(
                                      text:"${controller.numberOfQuestions}",
                                      style: Theme.of(context).textTheme.headlineMedium 
                                    ),
                                    TextSpan(
                                      text:"/",
                                      style: Theme.of(context).textTheme.headlineMedium 
                                    ),
                                    TextSpan(
                                      text:"${controller.countOfQuestion}",
                                      style: Theme.of(context).textTheme.headlineMedium 
                                    ),
                                ])
                          ),
                          ProgressTimer()
                        ]
                      )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      controller: controller.pageController,
                      itemCount: controller.questionList.length,
                      itemBuilder: (context, index) => QuestionWidget(
                        questionModel: controller.questionList[index],
                      )),
                  )
                ]
              ),
            )
          )
        ] 
      ),
      floatingActionButton: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) =>  CustomButton(
        onPressed: () => controller.nextQuestion(),
        text: "Next"
      ))
    );
  }
}

