import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:auvnet/features/home/presentation/blocs/shortcuts_bloc/shortcuts_bloc.dart';
import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeShortcutsListView extends StatelessWidget {
  const HomeShortcutsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShortcutsBloc, ShortcutsState>(
      builder: (context, state) {
        if (state is ShortcutsInitial) {
          context.read<ShortcutsBloc>().add(GetShortcutsEvent());
        }

        final bool isLoading = state is ShortcutsLoading;
        final List<HomeShortcutItemEntity> shortcuts = state is ShortcutsSuccess
            ? state.shortcuts
            : [];

        return Skeletonizer(
          enabled: isLoading,
          child: SizedBox(
            height: 65 + 8 + 34,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Center(
                  child: HomeShortcutsListViewItem(
                    shortcutItemEntity: shortcuts[index],
                  ),
                ),
              ),
              itemCount: shortcuts.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        );
      },
    );
  }
}
