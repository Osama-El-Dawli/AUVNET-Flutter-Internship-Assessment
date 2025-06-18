part of 'shortcuts_bloc.dart';

sealed class ShortcutsEvent extends Equatable {
  const ShortcutsEvent();

  @override
  List<Object> get props => [];
}

class GetShortcutsEvent extends ShortcutsEvent {}
