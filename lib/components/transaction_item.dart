import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final IconData icon; // Biểu tượng
  final String title; // Tiêu đề
  final String subtitle; // Thời gian và mô tả
  final String amount; // Số tiền
  final Color iconBackgroundColor; // Màu nền biểu tượng
  final Color amountColor; // Màu của số tiền

  const TransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    this.iconBackgroundColor = const Color(0xFF5087DB), // Màu nền mặc định
    this.amountColor = Colors.black, // Màu số tiền mặc định
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon và nội dung
          Row(
            children: [
              // Icon với nền tròn
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBackgroundColor, // Màu nền biểu tượng
                  borderRadius: BorderRadius.circular(20), // Bo tròn
                ),
                child: Icon(
                  icon, // Biểu tượng
                  color: Colors.white, // Màu biểu tượng
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              // Tiêu đề và mô tả
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Số tiền
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: amountColor, // Màu số tiền
            ),
          ),
        ],
      ),
    );
  }
}
