import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/shortcuts_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shortcuts_event.dart';
part 'shortcuts_state.dart';

class ShortcutsBloc extends Bloc<ShortcutsEvent, ShortcutsState> {
  final ShortcutsRepo shortcutsRepo;
  ShortcutsBloc(this.shortcutsRepo) : super(ShortcutsInitial()) {
    on<GetShortcutsEvent>((event, emit) async{
      await _getShortcuts(event, emit);
    });
  }
  Future<void> _getShortcuts(
    GetShortcutsEvent event,
    Emitter<ShortcutsState> emit,
  ) async {
    emit(ShortcutsLoading());
    final result = await shortcutsRepo.getShortcuts();
    result.fold(
      (shortcuts) => emit(ShortcutsSuccess(shortcuts: shortcuts)),
      (failure) => emit(ShortcutsFailure(message: failure.message)),
    );
  }
}
