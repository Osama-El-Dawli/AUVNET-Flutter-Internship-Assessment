part of 'shortcuts_bloc.dart';

sealed class ShortcutsState extends Equatable {
  const ShortcutsState();
  
  @override
  List<Object> get props => [];
}

final class ShortcutsInitial extends ShortcutsState {}
final class ShortcutsLoading extends ShortcutsState {}
final class ShortcutsSuccess extends ShortcutsState {
  final List<HomeShortcutItemEntity> shortcuts;
  const ShortcutsSuccess({required this.shortcuts});

  @override
  List<Object> get props => [shortcuts];
}
final class ShortcutsFailure extends ShortcutsState {
  final String message;
  const ShortcutsFailure({required this.message});

  @override
  List<Object> get props => [message];
}
