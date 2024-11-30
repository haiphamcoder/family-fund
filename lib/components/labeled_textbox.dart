import 'package:flutter/material.dart';
import 'package:family_fund/components/custom_textbox.dart';

class LabeledTextbox extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType inputType;
  final double? width;
  final double? height;

  const LabeledTextbox({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
    this.controller,
    this.inputType = TextInputType.text,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0E3E3E),
          ),
        ),
        const SizedBox(height: 8),
        CustomTextBox(
          hintText: hintText,
          isPassword: isPassword,
          controller: controller,
          inputType: inputType,
          width: width,
          height: height,
        ),
      ],
    );
  }
}
