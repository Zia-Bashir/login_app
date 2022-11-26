import 'package:get/get.dart';

class WelcomeController extends GetxController {
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    animate.value = true;
  }
}
