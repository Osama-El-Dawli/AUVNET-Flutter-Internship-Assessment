import 'package:auvnet/features/on_boarding/presentation/widgets/on_boarding_page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        OnBoardingPageViewItem(
          title: 'all-in-one delivery',
          subtitle:
              'Order groceries, medicines, and meals delivered straight to your door',
        ),
        OnBoardingPageViewItem(
          title: 'User-to-User Delivery',
          subtitle: 'Send or receive items from other users quickly and easily',
        ),
        OnBoardingPageViewItem(
          title: 'Sales & Discounts',
          subtitle: 'Discover exclusive sales and deals every day',
        ),
      ],
    );
  }
}
