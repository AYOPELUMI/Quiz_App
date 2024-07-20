import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/data/questionModel.dart';

import '../routes/routes.dart';

class QuestionController extends GetxController{
  var nameController = TextEditingController();
  String name="";
  final List<QuestionModel> _questionList =[
    QuestionModel(
      id: 1, 
      answer: 2, 
      question: "What does a variable do?",
       options: ["Nothing","Stores value", "hold an index","dont know"]),
    QuestionModel(
      id: 2, 
      answer: 1, 
      question: "Best Bott camp ever",
       options: ["KodeCamp BootCamp","CodeHauz BootCamp", "University of Camp","None of the above"]),
    QuestionModel(
      id: 3, 
      answer: 1, 
      question: "Which is not a programming language?",
       options: ["Java","Kotlin", "C","MongoDb"])
  ];
  List<QuestionModel> get questionList => [...questionList];
  bool _isPressed = false;
  bool get isPressed => _isPressed;

  double  _numberOfQuestions = 1.0;
  double get numberOfQuestions => _numberOfQuestions;

  int? _selectedAnswer;
  int? get selectedAnswer =>_selectedAnswer;

  int? _correctAnswer;
  int? get correctAnswer =>_correctAnswer;

  int _numberOfCorrectAnswers = 0;
  int get numberOfCorrectAnswers => _numberOfCorrectAnswers;

  final Map<int, bool> _questionIsAnswered = {};

  Timer? _timer;

  final maxSec= 10;
  final sec = 10.obs;

  double get scoreResult {
    return (_numberOfCorrectAnswers * 100) / _questionList.length;
  }

  void  checkAnswer(QuestionModel questionModel, int selectedAnswer){
    _isPressed = true;
    _selectedAnswer = selectedAnswer;
    _correctAnswer = questionModel.answer;
    if (_selectedAnswer == _correctAnswer) {
      _numberOfCorrectAnswers++;
    }
    stopTimer();
    _questionIsAnswered.update(questionModel.id, (value) => true);
    Future.delayed(const Duration(milliseconds: 500)).then((onValue) => nextQuestion());
    update();
  }

  bool checkIsQuestionAnswered (int questionId){
    return _questionIsAnswered.entries.firstWhere((element) => element.key == questionId).value;
  }

  void startTimer (){
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1) , (timer) {
      if(sec.value > 0){
        sec.value--;
      } else{
        stopTimer();
      }
    });
  }
  void stopTimer() => _timer?.cancel();
  void resetTimer() => sec.value=maxSec;

  void nextQuestion (){

  }

  void resetAnswer (){
    for (var element in _questionList) {
      _questionIsAnswered.addAll({element.id : false});
      update();
    }
  }

  void startAgain (){
    _correctAnswer =null;
    _numberOfCorrectAnswers = 0;
    resetAnswer();
    _selectedAnswer = null;
    Get.offAllNamed(Routes.welcomeScreenRoute);
  }
}