import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/controllers/splash_screen_controller.dart';
import 'package:login_app/src/utils/app_colors.dart';
import 'package:login_app/src/utils/app_images.dart';
import 'package:login_app/src/utils/app_text.dart';

import '../../utils/dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.find();
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          //* -- Top Icon
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: Image(
                image: const AssetImage(
                  splashTopIcon,
                ),
                height: dimensions(100, context),
              ),
            ),
          ),
          //* -- Text
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: dimensions(120, context),
              left: splashController.animate.value
                  ? dimensions(30, context)
                  : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: dimensions(24, context),
                            //fontWeight: FontWeight.w200,
                          ),
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontSize: dimensions(28, context),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //* -- Image
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              left: 0,
              right: 0,
              bottom:
                  splashController.animate.value ? dimensions(150, context) : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image(
                  image: const AssetImage(splashImage),
                  height: dimensions(400, context),
                ),
              ),
            ),
          ),

          //* -- Circle Avatar
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              right: dimensions(30, context),
              bottom:
                  splashController.animate.value ? dimensions(50, context) : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  radius: dimensions(20, context),
                ),
              ),
            ),
          ),

          //* -- Left Bottom image
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? -10 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: RotatedBox(
                  quarterTurns: 10,
                  child: Image(
                    image: const AssetImage(
                      splashTopIcon,
                    ),
                    height: dimensions(50, context),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
