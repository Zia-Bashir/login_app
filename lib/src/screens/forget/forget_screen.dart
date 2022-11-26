import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:login_app/src/extension/form_validate.dart';
import 'package:login_app/src/utils/app_colors.dart';
import 'package:login_app/src/utils/app_images.dart';
import 'package:login_app/src/utils/app_text.dart';
import 'package:login_app/src/utils/dimensions.dart';
import 'package:login_app/src/widgets/textfiled_widget.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    final isDark = Get.isDarkMode;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(dimensions(10, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* -- Assets Image
            SvgPicture.asset(
              forgetImage,
              height: dimensions(150, context),
              color: isDark ? AppColors.primaryColor : Colors.black,
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: dimensions(10, context),
                  vertical: dimensions(30, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    tForgetPassword,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: dimensions(28, context)),
                  ),
                  Text(
                    tForgetMailSubTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: dimensions(15, context)),
                  ),
                ],
              ),
            ),
            TextFieldWidget(
              controller: emailController,
              hintText: "E-Mail",
              icon: Icons.mail_rounded,
              labelText: "E-Mail",
              validator: (value) {
                if (value!.isEmpty) {
                  return "Your Email is required";
                } else if (isValidEmail(value)) {
                  return "Enter your valid Email";
                }
                return null;
              },
            ),

            Container(
              margin: EdgeInsets.only(top: dimensions(10, context)),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions(20, context),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: dimensions(15, context),
                      )),
                    ),
                child: Text(
                  tNext.toUpperCase(),
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
      ),
    );
  }
}
