import 'package:get/get.dart';
import 'package:quiz_app/Screen/gamescreen.dart';

class SplashController extends GetxController {
  @override
  void onInit(){
    Future.delayed(Duration(seconds:2), (){
      Get.off(GameScreen());
    },);
    super.onInit();
  }
}