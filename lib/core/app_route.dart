import 'package:get/get.dart';
import 'package:pull_up/view/screen/auth/create_account/create_account.dart';
import 'package:pull_up/view/screen/auth/enable_location.dart';
import 'package:pull_up/view/screen/auth/forget_password/check_email.dart';
import 'package:pull_up/view/screen/auth/forget_password/forget_password_reset_password.dart';
import 'package:pull_up/view/screen/auth/forget_password/forget_password_verify.dart';
import 'package:pull_up/view/screen/auth/logIn/login.dart';
import 'package:pull_up/view/screen/home/home_screen.dart';
import 'package:pull_up/view/screen/location/change_location.dart';
import 'package:pull_up/view/screen/location/located_shop.dart';
import 'package:pull_up/view/screen/onboarding.dart';
import 'package:pull_up/view/screen/shop_house/product_details/product_details.dart';
import 'package:pull_up/view/screen/shop_house/product_payment/product_payment.dart';
import 'package:pull_up/view/screen/shop_house/shop_house.dart';

import '../view/screen/auth/email_verify.dart';
import '../view/screen/splash.dart';
import '../view/screen/test.dart';

class AppRoute {
  static const String test = "/test.dart";
  static const String splash = "/splash.dart";
  static const String enableLocation = "/enable_location.dart";
  static const String onboarding = "/onboarding.dart";
  static const String createAccount = "/create_account.dart";
  static const String emailVerify = "/email_verify.dart";
  static const String login = "/login.dart";
  static const String forgetPasswordCheckEmail = "/check_email.dart";
  static const String forgetPasswordEmailVerify = "/forget_password_verify.dart";
  static const String forgetPasswordResetPassword = "/forget_password_reset_password.dart";
  static const String home = "/home_screen.dart";
  static const String changeLocation = "/change_location.dart";
  static const String locatedShop = "/located_shop.dart";
  static const String shopHouse = "/shop_house.dart";
  static const String productDetails = "/product_details.dart";
  static const String productPayment = "/product_payment.dart";

  static List<GetPage> routes = [
    GetPage(name: test, page: () =>  Test()),
    GetPage(name: splash, page: () =>  SplashScreen()),
    GetPage(name: enableLocation, page: () =>  EnableLocationScreen()),
    GetPage(name: onboarding, page: () =>  OnboardingScreen()),
    GetPage(name: createAccount, page: () =>  CreateAccountScreen()),
    GetPage(name: emailVerify, page: () =>  EmailVerify()),
    GetPage(name: login, page: () =>  LogInScreen()),
    GetPage(name: forgetPasswordCheckEmail, page: () =>  ForgetPasswordCheckEmail()),
    GetPage(name: forgetPasswordEmailVerify, page: () =>  ForgetPasswordEmailVerify()),
    GetPage(name: forgetPasswordResetPassword, page: () =>  ForgetPasswordResetPassword()),
    GetPage(name: home, page: () =>  HomeScreen()),
    GetPage(name: changeLocation, page: () =>  ChangeLocationScreen()),
    GetPage(name: locatedShop, page: () =>  LocatedShop()),
    GetPage(name: shopHouse, page: () =>  ShopHouseScreen()),
    GetPage(name: productDetails, page: () =>  ProductDetails()),
    GetPage(name: productPayment, page: () =>  Productpayment()),
  ];
}
