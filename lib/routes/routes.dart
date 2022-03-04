import 'package:get/get.dart';

import '../view/screens/welcome_screen.dart';

class AppRoutes {
  // initialroute
  static const welcome = Routes.welcomeScreen;

//getPages
  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () => WelcomeScreen()),
  ];
}

// class for route names
class Routes {
  static const String welcomeScreen = '/welcomeScreen';
}
