part of 'services_bloc.dart';

sealed class ServicesState extends Equatable {
  const ServicesState();

  @override
  List<Object> get props => [];
}

final class ServicesInitial extends ServicesState {}

final class ServicesLoading extends ServicesState {}

final class ServicesSuccess extends ServicesState {
  final List<HomeServiceItemEntity> services;
  const ServicesSuccess({required this.services});

  @override
  List<Object> get props => [services];
}

final class ServicesFailure extends ServicesState {
  final String message;
  const ServicesFailure({required this.message});

  @override
  List<Object> get props => [message];
}
