part of 'populars_bloc.dart';

sealed class PopularsState extends Equatable {
  const PopularsState();
  
  @override
  List<Object> get props => [];
}

final class PopularsInitial extends PopularsState {}
final class PopularsLoading extends PopularsState {}
final class PopularsSuccess extends PopularsState {
  final List<HomePopularItemEntity> populars;
  const PopularsSuccess({required this.populars});

  @override
  List<Object> get props => [populars];
}
final class PopularsFailure extends PopularsState {
  final String message;
  const PopularsFailure({required this.message});
}
