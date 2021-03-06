import 'package:flutterecommerce/logic/bindings/auth_binding.dart';
import 'package:flutterecommerce/view/screens/auth/forgot_password_screen.dart';
import 'package:flutterecommerce/view/screens/auth/login_screen.dart';
import 'package:flutterecommerce/view/screens/auth/signup_screen.dart';
import 'package:get/get.dart';

import '../view/screens/welcome_screen.dart';

class AppRoutes {
  // initial route
  static const welcome = Routes.welcomeScreen;

//getPages list of routes
  static final routes = [
    // ! route  for initial page
    GetPage(name: Routes.welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: Routes.loginScreen, page: () => LoginScreen()),
    GetPage(
        name: Routes.signUpScreen,
        page: () => SignUpScreen(),
        binding: AuthBinding()),
// forgotPasswordScreen
    GetPage(
        name: Routes.forgotPasswordScreen,
        page: () => ForgotPasswordScreen(),
        binding: AuthBinding()),
  ];
}

// adding the binding of Authentication instead of get.put
// class for route names
class Routes {
  static const String welcomeScreen = '/welcomeScreen';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
}
