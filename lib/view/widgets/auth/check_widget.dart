import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:line_icons/line_icons.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(color: Colors.grey.shade100),
      child: Icon(
        EvaIcons.checkmark,
        color: mainColor,
        size: 40,
      ),
    );
  }
}
