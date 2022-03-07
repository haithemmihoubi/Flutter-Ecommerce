import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/my_string.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/auth/container_under.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var DarkMode = Get.isDarkMode;
    //  TextEditingController for validation  to  get the text  of the inputs
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    // The Form key

    return Scaffold(
      backgroundColor: DarkMode ? darkColor : Colors.white,
      appBar: AppBar(
        backgroundColor: DarkMode ? darkColor : Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextUtils(
                              color: mainColor,
                              underline: TextDecoration.none,
                              fontSize: 28,
                              text: 'SIGN',
                              fontWeight: FontWeight.w500),
                          SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                              color: DarkMode ? Colors.black : mainColor,
                              underline: TextDecoration.none,
                              fontSize: 28,
                              text: 'UP',
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: nameController,
                        obscureText: false,
                        validation: (value) {
                          // validating the name with  the regular expression in my_string.dart
                          if (value.toString().length >= 2 ||
                              !RegExp(validationName).hasMatch(value)) {
                            return 'Enter a valid name';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Icon(
                                LineIcons.userCircleAlt,
                                color: Colors.black,
                                size: 30,
                              )
                            : Icon(
                                LineIcons.userCircleAlt,
                                color: mainColor,
                                size: 30,
                              ),
                        suffixIcon: Text(""),
                        hintText: "Username",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: emailController,
                        obscureText: false,
                        validation: (value) {
                          // validating the name with  the regular expression in my_string.dart
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return 'Please Enter a valid Email';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Icon(
                                LineIcons.envelopeAlt,
                                color: Colors.black45,
                                size: 30,
                              )
                            : Icon(
                                LineIcons.envelopeAlt,
                                color: mainColor,
                                size: 30,
                              ),
                        suffixIcon: Text(""),
                        hintText: "Email",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validation: (value) {
                          if (value.toString().length < 6) {
                            return 'Please Enter a valid Password';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icon(
                          LineIcons.lock,
                          color: mainColor,
                          size: 30,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              color: Colors.black,
                            )),
                        hintText: "Password",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CheckWidget(),
                      SizedBox(
                        height: 40,
                      ),
                      AuthButton(
                        text: 'SIGN UP',
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ContainerUnder(
          onPressed: () {},
          text: 'Already have an account ?',
          textType: 'Login'),
    );
  }
}
