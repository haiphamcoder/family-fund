import 'package:flutter/material.dart';

class CustomTabSelector extends StatefulWidget {
  const CustomTabSelector({super.key});

  @override
  _CustomTabSelectorState createState() => _CustomTabSelectorState();
}

class _CustomTabSelectorState extends State<CustomTabSelector> {
  int _selectedIndex = 0; // Chỉ số tab được chọn

  final List<String> _tabs = ['Hàng ngày', 'Tuần', 'Tháng']; // Danh sách tab

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F2FD), // Màu nền của toàn bộ tab
        borderRadius: BorderRadius.circular(30), // Bo góc cho container
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          _tabs.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index; // Cập nhật tab được chọn
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: _selectedIndex == index
                    ? const Color(0xFF5087DB) // Màu nền cho tab được chọn
                    : const Color(0xFFF1FFF3), // Màu nền cho tab chưa chọn
                borderRadius: BorderRadius.circular(20), // Bo góc cho từng tab
              ),
              child: Text(
                _tabs[index],
                style: TextStyle(
                  color: _selectedIndex == index
                      ? Colors.white // Màu chữ cho tab được chọn
                      : Colors.black, // Màu chữ cho tab chưa chọn
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
