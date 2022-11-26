import 'package:get/get.dart';
import 'package:login_app/src/controllers/splash_screen_controller.dart';
import 'package:login_app/src/controllers/welcome_screen_controller.dart';

import '../controllers/onboarding_screen_controller.dart';

@override
void initState() {
  Get.put(SplashController());
  Get.put(OnBoardingController());
  Get.put(WelcomeController());
}
