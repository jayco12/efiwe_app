import 'package:efiwe_app/src/app/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../authentication/login/login.dart';
import '../splash/splash.dart';
import 'routename.dart';

class AppScreen {
  static final screens = [
    GetPage(name: RouteName.splash, page: () => const Splash()),
    GetPage(name: RouteName.onboarding, page: () => Onboarding()),
    GetPage(name: RouteName.login, page: () => const Login()),
  ];
}
