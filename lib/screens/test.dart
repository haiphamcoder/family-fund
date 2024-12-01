import 'package:family_fund/components/header_widget.dart';
import 'package:family_fund/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: 70,
          elevation: 0,
          title: const HeaderWidget(
            userName: 'Nguyễn Văn A',
            userAvatar: 'assets/images/avatar.png',
          ),
          centerTitle: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Tổng số dư
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tổng số dư',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$7,783.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      // Đường chia
                      Container(
                        width: 2,
                        height: 40,
                        color: AppColors.textSecondary,
                      ),
                      // Tổng chi tiêu
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Tổng chi tiêu',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$1,187.40',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Thanh tiến trình
                  Row(
                    children: [
                      // Phần trăm chi tiêu
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text(
                          '30%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Progress Bar
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: LinearProgressIndicator(
                            value: 0.3, // Tiến trình chi tiêu (30%)
                            backgroundColor: Colors.white30,
                            color: Colors.white, // Màu tiến trình
                            minHeight: 12,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Mục tiêu
                      const Text(
                        '\$20,000.00',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Checkbox và dòng giải thích
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {
                          // Xử lý thay đổi checkbox
                        },
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '30% Chi Phí Của Bạn, Làm Tốt Lắm.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Tổng số dư',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '1.000.000 VND',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Lịch sử giao dịch',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text('Nguyễn Văn A'),
                          subtitle: Text('1.000.000 VND'),
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar.png'),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
