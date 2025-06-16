import 'package:auvnet/features/on_boarding/presentation/widgets/on_boarding_page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
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
