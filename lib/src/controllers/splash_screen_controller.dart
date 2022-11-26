import 'package:get/get.dart';

class SplashController extends GetxController {
  RxBool animate = false.obs;
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(seconds: 5));
    Get.offAllNamed("/onboarding");
    // if (user == null) {
    //   Get.offAllNamed("login");
    // }
  }
}
