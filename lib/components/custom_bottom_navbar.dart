import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex; // Chỉ mục của mục đang chọn
  final ValueChanged<int> onTap; // Hàm gọi lại khi bấm vào mục nào đó

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0xFFE3F2FD), // Màu nền xanh nhạt
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: Icons.home,
            index: 0,
            isSelected: currentIndex == 0,
            onTap: onTap,
          ),
          _buildNavItem(
            icon: Icons.bar_chart,
            index: 1,
            isSelected: currentIndex == 1,
            onTap: onTap,
          ),
          _buildNavItem(
            icon: Icons.swap_horiz,
            index: 2,
            isSelected: currentIndex == 2,
            onTap: onTap,
          ),
          _buildNavItem(
            icon: Icons.layers,
            index: 3,
            isSelected: currentIndex == 3,
            onTap: onTap,
          ),
          _buildNavItem(
            icon: Icons.person,
            index: 4,
            isSelected: currentIndex == 4,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required int index,
    required bool isSelected,
    required ValueChanged<int> onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0xFF5087DB), // Màu xanh cho mục được chọn
                borderRadius: BorderRadius.circular(15),
              )
            : null,
        child: Icon(
          icon,
          color: isSelected ? Colors.white : const Color(0xFF0E3E3E), // Đổi màu icon
          size: 28,
        ),
      ),
    );
  }
}
