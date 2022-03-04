import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterecommerce/routes/routes.dart';
import 'package:flutterecommerce/view/screens/auth/login_screen.dart';
import 'package:get/get.dart';

import '../../utils/theme.dart';
import '../widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/background.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: TextUtils(
                          text: 'welcome',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underline: TextDecoration.none)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextUtils(
                            color: Colors.white,
                            fontSize: 35,
                            text: 'Shop',
                            fontWeight: FontWeight.bold,
                            underline: TextDecoration.none),
                        SizedBox(
                          width: 6,
                        ),
                        TextUtils(
                            color: mainColor,
                            fontSize: 35,
                            text: 'Flow',
                            fontWeight: FontWeight.bold,
                            underline: TextDecoration.none),
                      ],
                    )),
                SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.loginScreen);
                  },
                  child: TextUtils(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      text: "Get Started",
                      underline: TextDecoration.none),
                  style: ElevatedButton.styleFrom(
                      primary: mainColor2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                        color: Colors.white,
                        fontSize: 18,
                        text: "Don't have an  account ?",
                        fontWeight: FontWeight.normal,
                        underline: TextDecoration.none),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.signUpScreen);
                      },
                      child: TextUtils(
                        color: mainColor3,
                        fontSize: 18,
                        text: "Sign up",
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.underline,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
