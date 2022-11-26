import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:login_app/src/utils/app_images.dart';
import 'package:login_app/src/utils/app_text.dart';
import 'package:login_app/src/utils/dimensions.dart';
import 'package:login_app/src/widgets/welcome_text_widget.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Get.isDarkMode;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: dimensions(20, context), bottom: dimensions(20, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* -- Assets Image --
              SvgPicture.asset(
                loginImage,
                width: MediaQuery.of(context).size.width * 0.5,
              ),

              //* -- Texts
              Padding(
                padding: EdgeInsets.only(
                    left: dimensions(20, context),
                    bottom: dimensions(20, context)),
                child: const WelcomeTextWidget(
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
              ),

              Column(
                children: [
                  //* -- Login Form
                  LoginForm(isDark: isDark),

                  //* --Or Text

                  Padding(
                    padding: EdgeInsets.all(dimensions(20, context)),
                    child: Text(
                      "Or".toUpperCase(),
                      style: isDark
                          ? Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: dimensions(15, context),
                              color: Colors.white)
                          : Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: dimensions(15, context),
                              color: Colors.grey),
                    ),
                  ),

                  //* -- Google Signin Outline Button

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: dimensions(20, context),
                    ),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: Theme.of(context)
                          .outlinedButtonTheme
                          .style
                          ?.copyWith(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.symmetric(
                              vertical: dimensions(10, context),
                            )),
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/google.svg"),
                          SizedBox(
                            width: dimensions(10, context),
                          ),
                          Text(
                            "Sign-In-with Google",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(fontSize: dimensions(14, context)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(dimensions(20, context)),
                    child: RichText(
                        text: TextSpan(
                            text: tDontHaveAnAccount,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(fontSize: dimensions(13, context)),
                            children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed("/signup"),
                              text: tSignup,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: Colors.blue,
                                      fontSize: dimensions(15, context)))
                        ])),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
