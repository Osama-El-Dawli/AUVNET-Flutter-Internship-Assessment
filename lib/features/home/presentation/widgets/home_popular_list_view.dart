import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';
import 'package:auvnet/features/home/presentation/blocs/populars_bloc/populars_bloc.dart';
import 'package:auvnet/features/home/presentation/widgets/home_popular_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePopularListView extends StatelessWidget {
  const HomePopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularsBloc, PopularsState>(
      builder: (context, state) {
        if (state is PopularsInitial) {
          context.read<PopularsBloc>().add(GetPopularsEvent());
        }
        final bool isLoading = state is PopularsLoading;
        final List<HomePopularItemEntity> popularItems =
            state is PopularsSuccess ? state.populars : [];

        return Skeletonizer(
          enabled: isLoading,
          child: SizedBox(
            height: 70 + 17 + 43,
            child: ListView.builder(
              itemCount: isLoading ? 3 : popularItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = isLoading
                    ? HomePopularItemEntity(image: '', name: '', time: '')
                    : popularItems[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: HomePopularListViewItem(popularItemEntity: item),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
