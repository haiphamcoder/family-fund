import 'package:family_fund/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      height: 85,
      decoration: const BoxDecoration(
        color: AppColors.navBarBackground, // Màu nền xanh nhạt
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            iconPath: 'assets/icons/home.svg',
            index: 0,
            width: 35,
            height: 35,
            isSelected: currentIndex == 0,
            onTap: onTap,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/statistics.svg',
            index: 1,
            width: 35,
            height: 35,
            isSelected: currentIndex == 1,
            onTap: onTap,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/transaction.svg',
            index: 2,
            width: 35,
            height: 35,
            isSelected: currentIndex == 2,
            onTap: onTap,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/category.svg',
            index: 3,
            width: 35,
            height: 35,
            isSelected: currentIndex == 3,
            onTap: onTap,
          ),
          _buildNavItem(
            iconPath: 'assets/icons/account.svg',
            index: 4,
            width: 35,
            height: 35,
            isSelected: currentIndex == 4,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    double? width,
    double? height,
    required int index,
    required bool isSelected,
    required ValueChanged<int> onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 54,
        height: 54,
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0xFF5087DB), // Màu xanh cho mục được chọn
                borderRadius: BorderRadius.circular(10),
              )
            : null,
        child: SvgPicture.asset(
          iconPath,
          width: width,
          height: height,
          colorFilter: isSelected
              ? const ColorFilter.mode(AppColors.iconSelected, BlendMode.srcIn)
              : const ColorFilter.mode(AppColors.iconUnselected, BlendMode.srcIn), 
        )
      ),
    );
  }
}
