import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisible = false;

  void Isvisibility() {
    isVisible = !isVisible;
    // update  the state like notifyListener => Listen  to  updates in this method
    update();
  }
}
