import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/controllers/onboarding_screen_controller.dart';
import 'package:login_app/src/utils/app_colors.dart';
import 'package:login_app/src/utils/dimensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScrrens extends StatelessWidget {
  const OnboardingScrrens({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingController onBoardingController = Get.find();

    return Scaffold(
      body: Stack(
        children: [
          //* LiquidSwipe
          LiquidSwipe(
            pages: onBoardingController.pages,
            onPageChangeCallback: onBoardingController.onPageChangeCallback,
            liquidController: onBoardingController.controller,
            enableSideReveal: true,
            slideIconWidget: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            positionSlideIcon: 0.8,
          ),

          //* Outline Button

          Positioned(
            bottom: dimensions(50, context),
            left: 0,
            right: 0,
            child: OutlinedButton(
              onPressed: () {
                if (onBoardingController.controller.currentPage == 2) {
                  //* -- Navigate to Welcome Screen
                  Get.offAllNamed("/welcome");
                } else {
                  onBoardingController.animateToNextPage();
                }
              },
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  side: const BorderSide(color: Colors.black26),
                  padding: EdgeInsets.all(dimensions(20, context)),
                  foregroundColor: Colors.white),
              child: Container(
                padding: EdgeInsets.all(dimensions(20, context)),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ),

          //* Skip Text

          Positioned(
            top: dimensions(50, context),
            right: dimensions(30, context),
            child: GestureDetector(
              onTap: () => onBoardingController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),

          //* Animated Indicator

          Obx(
            () => Positioned(
              left: 0,
              right: 0,
              bottom: dimensions(20, context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: onBoardingController.currentPage.value,
                    count: onBoardingController.pages.length,
                    effect: WormEffect(
                        dotHeight: dimensions(5, context),
                        activeDotColor: AppColors.secondaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
