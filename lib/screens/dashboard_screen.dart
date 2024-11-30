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
    Center(child: Text('Trang chủ', style: TextStyle(fontSize: 24))),
    Center(child: Text('Thống kê', style: TextStyle(fontSize: 24))),
    Center(child: Text('Giao dịch', style: TextStyle(fontSize: 24))),
    Center(child: Text('Ví', style: TextStyle(fontSize: 24))),
    Center(child: Text('Tài khoản', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // Hiển thị màn hình tương ứng
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Cập nhật chỉ mục khi bấm
          });
        },
      ),
    );
  }
}
