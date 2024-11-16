import 'package:get/get.dart';
import 'package:test_app/home/home_page.dart';
import 'package:test_app/item/item_page.dart';
import 'package:test_app/splash/first_page.dart';
import 'package:test_app/splash/third_page.dart';
import 'package:test_app/splash/second_page.dart';
import 'package:test_app/splash/splash_page.dart';
import 'package:test_app/auth/signup/signup_page.dart';
import 'package:test_app/auth/signin/signin_page.dart';

class RoutesClass {
  static String home = "/home";
  static String splash = "/";
  static String item = "/item";
  static String signin = "/signin";
  static String signup = "/signup";
  static String third = "/third";
  static String second = "/second";
  static String first = "/first";

  static String getHomeRoute() => home;
  static String getSplashRoute() => splash;
  static String getItemRoute() => item;
  static String getSignInRoute() => signin;
  static String getSignUpRoute() => signup;
  static String getThirdRoute() => third;
  static String getSecondRoute() => second;
  static String getFirstRoute() => first;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: home,
      page: () => const SplashPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: item,
      page: () => const ItemPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: signin,
      page: () => const SigninPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: signup,
      page: () => const SignupPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: third,
      page: () => const ThirdPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: second,
      page: () => const SecondPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: first,
      page: () => const FirstPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
