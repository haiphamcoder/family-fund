import 'package:family_fund/components/custom_tab_selector.dart';
import 'package:family_fund/components/header_widget.dart';
import 'package:family_fund/components/saving_goal_card.dart';
import 'package:family_fund/components/transaction_item.dart';
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Tổng số dư
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Tổng số dư',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$7,783.00',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: AppColors.textSecondary,
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Tổng chi tiêu',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$1,187.40',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: LinearProgressIndicator(
                              value: 0.3, // Tiến trình chi tiêu (30%)
                              backgroundColor: Colors.white30,
                              color: Colors.white, // Màu tiến trình
                              minHeight: 30,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '30% Chi phí của bạn. Làm tốt lắm!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView(
                  children: const [
                    SizedBox(height: 20),
                    SavingGoalCard(),
                    SizedBox(height: 10),
                    CustomTabSelector(),
                    SizedBox(height: 10),
                    TransactionItem(
                      icon: Icons.shopping_cart, 
                      title: 'Mua sắm',
                      subtitle: '18:24 - Nov 20, 2021', 
                      amount: '-\$120.00',
                    ),
                    TransactionItem(
                      icon: Icons.fastfood, 
                      title: 'Ăn uống',
                      subtitle: '12:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                    TransactionItem(
                      icon: Icons.directions_car, 
                      title: 'Xăng xe',
                      subtitle: '08:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                    TransactionItem(
                      icon: Icons.fastfood, 
                      title: 'Ăn uống',
                      subtitle: '12:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                    TransactionItem(
                      icon: Icons.directions_car, 
                      title: 'Xăng xe',
                      subtitle: '08:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                    TransactionItem(
                      icon: Icons.fastfood, 
                      title: 'Ăn uống',
                      subtitle: '12:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                    TransactionItem(
                      icon: Icons.directions_car, 
                      title: 'Xăng xe',
                      subtitle: '08:00 - Nov 20, 2021', 
                      amount: '-\$50.00',
                    ),
                  ],
                )
              )
            ),
          ],
        ));
  }
}
