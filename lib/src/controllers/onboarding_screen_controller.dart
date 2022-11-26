import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../models/onboarding_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_text.dart';
import '../widgets/onboarding_container_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingContainerWidget(
      model: OnBoardingModel(
          onboardingImage1,
          tOnBoardingTitle1,
          tOnBoardingSubTitle1,
          tOnBoardingCounter1,
          AppColors.onBoardingPage1Color),
    ),
    OnBoardingContainerWidget(
      model: OnBoardingModel(
          onboardingImage2,
          tOnBoardingTitle2,
          tOnBoardingSubTitle2,
          tOnBoardingCounter2,
          AppColors.onBoardingPage2Color),
    ),
    OnBoardingContainerWidget(
      model: OnBoardingModel(
          onboardingImage3,
          tOnBoardingTitle3,
          tOnBoardingSubTitle3,
          tOnBoardingCounter3,
          AppColors.onBoardingPage3Color),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextPage() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangeCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
