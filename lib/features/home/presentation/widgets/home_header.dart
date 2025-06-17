import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_colors.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              Text('Delivering to', style: AppTextStyles.bold12),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Al Satwa, 81A Street',
                  style: AppTextStyles.bold16,
                ),
                subtitle: Text(
                  'Hi hepa!',
                  style: AppTextStyles.bold30.copyWith(color: Colors.white),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(Assets.imagesHomeAvatar),
                ),
              ),
              const SizedBox(height: 37),
            ],
          ),
        ),
      ),
    );
  }
}
