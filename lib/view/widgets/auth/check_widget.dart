import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';
import 'package:line_icons/line_icons.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              EvaIcons.checkmark,
              color: mainColor,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        TextUtils(
            color: Colors.black,
            underline: TextDecoration.none,
            fontSize: 15,
            text: "I accept",
            fontWeight: FontWeight.normal),
        SizedBox(
          width: 5,
        ),
        TextUtils(
            color: Colors.black,
            underline: TextDecoration.underline,
            fontSize: 15,
            text: "terms & conditions",
            fontWeight: FontWeight.normal),
      ],
    );
  }
}
