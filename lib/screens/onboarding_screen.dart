import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0; // Để theo dõi chỉ số trang hiện tại

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Chào mừng bạn tới Ứng dụng Quản lý Tài chính Gia đình",
      "image": "assets/images/onboarding_1.png"
    },
    {
      "title": "Bạn đã sẵn sàng để Quản lý Ví tiền của Gia đình mình chưa?",
      "image": "assets/images/onboarding_2.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingContent(
                  title: onboardingData[index]["title"]!,
                  image: onboardingData[index]["image"]!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingData.length,
              (index) => buildDot(index),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                if (_currentIndex == onboardingData.length - 1) {
                  // Chuyển đến màn hình Login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                } else {
                  // Chuyển sang trang tiếp theo
                  setState(() {
                    _currentIndex++;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Màu nền nút
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text(
                _currentIndex == onboardingData.length - 1
                    ? "Bắt đầu"
                    : "Tiếp theo",
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: _currentIndex == index ? 16 : 8,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String title;
  final String image;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 40),
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ],
    );
  }
}
