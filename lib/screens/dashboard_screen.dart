import 'package:family_fund/constants/app_colors.dart';
import 'package:family_fund/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:family_fund/components/custom_bottom_navbar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0; // Mục được chọn mặc định là 0

  // Danh sách màn hình để điều hướng
  final List<Widget> screens = [
    const HomeScreen(),
    Container(
      color: AppColors.secondary,
      child: const Center(
        child: Text(
          'Thống kê',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
      color: AppColors.secondary,
      child: const Center(
        child: Text(
          'Giao dịch',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
      color: AppColors.secondary,
      child: const Center(
        child: Text(
          'Danh mục',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
      color: AppColors.secondary,
      child: const Center(
        child: Text(
          'Tài khoản',
          style: TextStyle(fontSize: 24),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: screens[currentIndex], // Hiển thị màn hình tương ứng
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: CustomBottomNavBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index; // Cập nhật chỉ mục khi bấm
              });
            },
          ),
        ));
  }
}
