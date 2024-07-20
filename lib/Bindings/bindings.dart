import 'package:get/get.dart';
import 'package:quiz_app/Controllers/questionController.dart';
import 'package:quiz_app/Controllers/splashcontroller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => QuestionController());
    Get.lazyPut(() => SplashController());
  }
}