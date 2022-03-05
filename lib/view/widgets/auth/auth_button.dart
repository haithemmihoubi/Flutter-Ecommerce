

import 'package:flutter/material.dart';
import 'package:flutterecommerce/main.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: mainColor,
        minimumSize: Size(360, 50),
      ),
      onPressed: onPressed,
      child: TextUtils(
          color: Colors.white,
          underline: TextDecoration.none,
          fontSize: 18,
          text: text,
          fontWeight: FontWeight.bold),
    );
  }
}
