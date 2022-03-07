import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisible = false;
  bool isChecked = false;

  void isvisibility() {
    isVisible = !isVisible;
    // update  the state like notifyListener => Listen  to  updates in this method
    update();
  }
// checkBox functionality implementation
  void isCheckedBox() {
    isChecked = !isChecked;
    // update  the state like notifyListener => Listen  to  updates in this method
    update();
  }
}
