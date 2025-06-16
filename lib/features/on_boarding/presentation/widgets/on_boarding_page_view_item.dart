import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/on_boarding/presentation/widgets/on_boarding_header.dart';
import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({super.key, required this.title, required this.subtitle});
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingHeader()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.medium28.copyWith(
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(height: 12),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.regular14.copyWith(
                  color: Color(0xff677294),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
