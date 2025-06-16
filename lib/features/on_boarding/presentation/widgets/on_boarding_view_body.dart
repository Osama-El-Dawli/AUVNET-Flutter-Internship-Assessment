import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/core/widgets/custom_button.dart';
import 'package:auvnet/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        const SizedBox(height: 52),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(Assets.imagesOnBoardingFooter),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  CustomButton(text: 'Get Started', onPressed: () {}),
                  const SizedBox(height: 14),
                  TextButton(
                    style: TextButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: AppTextStyles.regular14.copyWith(
                        color: const Color(0xff677294),
                      ),
                    ),
                  ),
                  const SizedBox(height: 43),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
