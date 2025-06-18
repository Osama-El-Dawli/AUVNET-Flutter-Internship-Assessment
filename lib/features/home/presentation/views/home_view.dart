import 'package:auvnet/core/services/get_it_service.dart';
import 'package:auvnet/features/auth/domain/entities/user_entity.dart';
import 'package:auvnet/features/home/data/repos/popular_repo_impl.dart';
import 'package:auvnet/features/home/data/repos/services_repo_impl.dart';
import 'package:auvnet/features/home/data/repos/shortcuts_repo_impl.dart';
import 'package:auvnet/features/home/presentation/blocs/populars_bloc/populars_bloc.dart';
import 'package:auvnet/features/home/presentation/blocs/services_bloc/services_bloc.dart';
import 'package:auvnet/features/home/presentation/blocs/shortcuts_bloc/shortcuts_bloc.dart';
import 'package:auvnet/features/home/presentation/views/cart_view.dart';
import 'package:auvnet/features/home/presentation/views/categories_view.dart';
import 'package:auvnet/features/home/presentation/views/deliver_view.dart';
import 'package:auvnet/features/home/presentation/views/profile_view.dart';
import 'package:auvnet/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:auvnet/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.userEntity});
  final UserEntity userEntity;
  static const String routeName = 'homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ValueNotifier<double> _page = ValueNotifier(0);
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _page.value = _pageController.page ?? 0;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _page.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ServicesBloc(getIt<ServicesRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => ShortcutsBloc(getIt<ShortcutsRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => PopularsBloc(getIt<PopularRepoImpl>()),
        ),
      ],
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          onTap: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          page: _page,
        ),
        body: PageView(
          controller: _pageController,
          children: [
            HomeViewBody(userEntity: widget.userEntity),
            const CategoriesView(),
            const DeliverView(),
            const CartView(),
            const ProfileView(),
          ],
        ),
      ),
    );
  }
}
