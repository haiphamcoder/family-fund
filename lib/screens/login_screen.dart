import 'package:family_fund/components/custom_button.dart';
import 'package:family_fund/screens/create_account_screen.dart';
import 'package:family_fund/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth =
        MediaQuery.of(context).size.width; // Lấy chiều rộng màn hình
    return Scaffold(
      backgroundColor: const Color(0xFFF1FFF3), // Màu nền sáng
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image.png',
              width: screenWidth * 0.4, // Tỉ lệ ảnh theo chiều rộng màn hình
            ),
            const SizedBox(height: 30),
            const Text(
              'Family Fund',
              style: TextStyle(
                fontSize: 28, // Kích thước chữ lớn hơn một chút
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Đăng nhập',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
              },
              backgroundColor: const Color(0xFF5087DB),
              textColor: const Color(0xFFF1FFF3),
              fontSize: 20,
              borderRadius: 30,
            ),
            const SizedBox(height: 15),
            CustomButton(
              text: 'Đăng ký',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccountScreen(),
                  ),
                );
              },
              backgroundColor: const Color(0xFFCCE4FD),
              textColor: const Color(0xFF0E3E3E),
              fontSize: 20,
              borderRadius: 30,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Quên mật khẩu?',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
