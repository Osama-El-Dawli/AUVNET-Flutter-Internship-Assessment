import 'package:auvnet/core/utils/app_assets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeShortcutsPageView extends StatefulWidget {
  const HomeShortcutsPageView({super.key});

  @override
  State<HomeShortcutsPageView> createState() => _HomeShortcutsPageViewState();
}

class _HomeShortcutsPageViewState extends State<HomeShortcutsPageView> {
  final PageController _pageController = PageController();
  double _currentPage = 0.0;

  final List<String> images = [
    Assets.imagesShortcutPageView,
    Assets.imagesShortcutPageView,
    Assets.imagesShortcutPageView,
    Assets.imagesShortcutPageView,
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0.0;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 343 / 180,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) =>
                Image.asset(images[index], fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 8),
        DotsIndicator(
          position: _currentPage,
          dotsCount: images.length,
          decorator: const DotsDecorator(color: Color(0xffD9D9D9)),
        ),
      ],
    );
  }
}
