import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/popular_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'populars_event.dart';
part 'populars_state.dart';

class PopularsBloc extends Bloc<PopularsEvent, PopularsState> {
  final PopularRepo popularsRepo;
  PopularsBloc(this.popularsRepo) : super(PopularsInitial()) {
    on<GetPopularsEvent>((event, emit) async {
      await _getPopulars(event, emit);
    });
  }

  Future<void> _getPopulars(
    GetPopularsEvent event,
    Emitter<PopularsState> emit,
  ) async {
    emit(PopularsLoading());
    final result = await popularsRepo.getPopular();
    result.fold(
      (populars) => emit(PopularsSuccess(populars: populars)),
      (failure) => emit(PopularsFailure(message: failure.message)),
    );
  }
}
