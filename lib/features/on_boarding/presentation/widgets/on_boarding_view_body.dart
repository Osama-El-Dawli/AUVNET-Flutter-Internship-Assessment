import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_constants.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/core/widgets/custom_button.dart';
import 'package:auvnet/features/auth/presentation/views/login_view.dart';
import 'package:auvnet/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final hiveBox = Hive.box(AppConstants.settingsBox);

  void nextPage() {
    _currentPage++;
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        final newPage = _pageController.page?.round() ?? 0;
        if (newPage != _currentPage) {
          _currentPage = newPage;
          setState(() {});
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: _pageController)),
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
                  CustomButton(
                    text: 'Get Started',
                    onPressed: () {
                      hiveBox.put(AppConstants.isOnBoardingVisited, true);
                      Navigator.pushReplacementNamed(
                        context,
                        LoginView.routeName,
                      );
                    },
                  ),
                  const SizedBox(height: 14),
                  TextButton(
                    style: TextButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      if (_currentPage < 2) {
                        nextPage();
                      } else {
                        hiveBox.put(AppConstants.isOnBoardingVisited, true);
                        Navigator.pushReplacementNamed(
                          context,
                          LoginView.routeName,
                        );
                      }
                    },
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
