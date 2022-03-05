import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;

  final Function() onPressed;
  final String textType;

  const ContainerUnder(
      {required this.text,
      required this.onPressed,
      required this.textType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextUtils(
                color: Colors.white,
                underline: TextDecoration.none,
                fontSize: 20,
                text: text,
                fontWeight: FontWeight.bold),
            TextButton(
              onPressed: onPressed,
              child: TextUtils(
                  color: Colors.white,
                  underline: TextDecoration.underline,
                  fontSize: 20,
                  text: textType,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
