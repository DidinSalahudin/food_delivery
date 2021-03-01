import 'package:food_delivery/features/presentations/screens/splash/splash.dart';
import 'package:food_delivery/features/presentations/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';

final List<GetPage> routeApp = [
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
  ),
  GetPage(
    name: '/onboarding',
    page: () => OnboardingScreen(),
  )
];
