import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType inputType;
  final double? width;
  final double? height;

  const CustomTextBox(
      {super.key,
      required this.hintText,
      this.isPassword = false,
      this.controller,
      this.inputType = TextInputType.text,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Color.fromRGBO(14, 62, 62, 0.45)
            ),
            filled: true,
            fillColor: const Color(0xFFCCE4FD),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Color(0xFF5087DB), width: 2),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          ),
        ));
  }
}
