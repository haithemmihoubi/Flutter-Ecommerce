import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/theme.dart';

class ContainerUnder extends StatelessWidget {
  final String text;

  final Function onPressed;

  const ContainerUnder({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        color: mainColor,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Text(text),
          ],
        ));
  }
}
