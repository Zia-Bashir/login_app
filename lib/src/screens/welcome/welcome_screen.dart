import 'package:flutter/Material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:login_app/src/controllers/welcome_screen_controller.dart';
import 'package:login_app/src/utils/app_colors.dart';
import 'package:login_app/src/utils/app_text.dart';

import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final isDark = Get.isDarkMode;
    WelcomeController welcomeController = Get.find();
    welcomeController.startAnimation();
    return Scaffold(
      backgroundColor: isDark ? AppColors.darkColor : AppColors.primaryColor,
      body: Container(
        padding: EdgeInsets.all(dimensions(30, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              welcomeImage,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Column(
              children: [
                Text(
                  tWelcomeTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: dimensions(25, context)),
                ),
                Text(
                  tWelcomeSubTitle,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: dimensions(16, context),
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: dimensions(50, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Get.toNamed("/signup");
                        },
                        style: Theme.of(context)
                            .outlinedButtonTheme
                            .style
                            ?.copyWith(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                vertical: dimensions(20, context),
                              )),
                            ),
                        child: Text(
                          tSignup,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: dimensions(16, context)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.copyWith(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                vertical: dimensions(20, context),
                              )),
                            ),
                        child: Text(
                          tLogin,
                          style: isDark
                              ? Theme.of(context).textTheme.bodyText1?.copyWith(
                                  color: AppColors.darkColor,
                                  fontSize: dimensions(16, context))
                              : Theme.of(context).textTheme.bodyText1?.copyWith(
                                  color: Colors.white,
                                  fontSize: dimensions(16, context)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
