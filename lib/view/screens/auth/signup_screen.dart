import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:line_icons/line_icons.dart';

import '../../widgets/auth/auth_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 40,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
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
                            color: Colors.black,
                            underline: TextDecoration.none,
                            fontSize: 28,
                            text: 'UP',
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AuthTextFormField(
                      controller: nameController,
                      obscureText: false,
                      validation: () {},
                      prefixIcon: Icon(LineIcons.userCircleAlt,color: mainColor2,size: 35,),

                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
