import 'package:flutter/material.dart';

class SavingGoalCard extends StatelessWidget {
  const SavingGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF5087DB), // Màu nền xanh
        borderRadius: BorderRadius.circular(40), // Bo góc
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Phần vòng tròn và text "Mục Tiêu Tiết Kiệm"
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Vòng tròn với progress
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(
                      value: 0.75, // 75% tiến trình
                      strokeWidth: 4.0,
                      backgroundColor: Colors.white24,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  const Icon(
                    Icons.directions_car,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Mục Tiêu\nTiết Kiệm',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          // Đường dọc chia cột
          Container(
            width: 1,
            height: 70,
            color: Colors.white54,
          ),
          const SizedBox(width: 16),
          // Phần nội dung bên phải
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Doanh thu
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.attach_money, size: 20, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Doanh thu',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '\$5,000.00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Đường ngang
                Container(
                  height: 1,
                  color: Colors.white54,
                ),
                const SizedBox(height: 8),
                // Đồ ăn tuần trước
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.restaurant, size: 20, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Đồ ăn tuần trước',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '-\$100.00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
