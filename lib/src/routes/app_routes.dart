import 'package:get/get.dart';
import 'package:login_app/src/screens/login/login_screen.dart';
import 'package:login_app/src/screens/onboarding/onboarding_screens.dart';
import 'package:login_app/src/screens/signup/signup_screen.dart';
import 'package:login_app/src/screens/splash/splash_screen.dart';
import 'package:login_app/src/screens/welcome/welcome_screen.dart';

class Approutes {
  static List<GetPage> routes = [
    //= -- Initial Route
    GetPage(
      name: "/",
      page: () => const SplashScreen(),
    ),

    //= -- Welcome Screen Route
    GetPage(
      name: "/welcome",
      page: () => const WelcomeScreen(),
    ),

    //= -- OnBoarding Screen Route
    GetPage(
      name: "/onboarding",
      page: () => const OnboardingScrrens(),
    ),

    //= -- LogIn Screen Route
    GetPage(
      name: "/login",
      page: () => const LoginScreen(),
    ),
    //= -- SignUp Screen Route
    GetPage(
      name: "/signup",
      page: () => const SignUpScreen(),
    ),
  ];
}
