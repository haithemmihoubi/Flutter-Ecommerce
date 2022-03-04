import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validation;
  final Widget prefixIcon;

  final Widget suffixIcon;

  const AuthTextFormField(
      {required this.controller,
      required this.obscureText,
      required this.validation,
      required this.prefixIcon,
      required this.suffixIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      validator: (value) => validation(value),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
