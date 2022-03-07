import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/logic/controller/auth_controller.dart';
import 'package:flutterecommerce/utils/theme.dart';
import 'package:flutterecommerce/view/widgets/text_utils.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class CheckWidget extends StatelessWidget {
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
       controller.isCheckedBox() ;

            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child:controller.isChecked? Icon(
                EvaIcons.checkmark,
                color: mainColor,
                size: 30,
              ):Text(""),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          TextUtils(
              color: Get.isDarkMode ? Colors.black : mainColor,
              underline: TextDecoration.none,
              fontSize: 15,
              text: "I accept",
              fontWeight: FontWeight.normal),
          SizedBox(
            width: 5,
          ),
          TextUtils(
              color: Get.isDarkMode ? Colors.black : mainColor,
              underline: TextDecoration.underline,
              fontSize: 15,
              text: "terms & conditions",
              fontWeight: FontWeight.normal),
        ],
      );
    });
  }
}
