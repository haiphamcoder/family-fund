import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text; // Văn bản trên nút
  final VoidCallback onPressed; // Hàm gọi khi bấm nút
  final Color backgroundColor; // Màu nền
  final Color textColor; // Màu chữ
  final double fontSize; // Kích thước chữ
  final double borderRadius; // Bo góc
  final double? width; // Chiều rộng nút
  final double? height; // Chiều cao nút
  final EdgeInsetsGeometry padding; // Padding của nút

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF2196F3),
    this.textColor = const Color(0xFFFFFFFF),
    this.fontSize = 16,
    this.borderRadius = 10,
    this.width = 207, // Chiều rộng tùy chỉnh
    this.height = 45, // Chiều cao tùy chỉnh
    this.padding = const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Đặt chiều rộng
      height: height, // Đặt chiều cao
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
