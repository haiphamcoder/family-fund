import 'package:family_fund/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  final String userName;
  final String userAvatar;

  const HeaderWidget({
    super.key,
    required this.userName,
    required this.userAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: AppColors.primary,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Xin chào, \n$userName',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/notification.svg',
                        colorFilter: const ColorFilter.mode(
                          AppColors.textPrimary,
                          BlendMode.srcIn,
                        ),
                      ),
                    )),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(userAvatar),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
