import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/services_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final ServicesRepo servicesRepo;
  ServicesBloc(this.servicesRepo) : super(ServicesInitial()) {
    on<GetServicesEvent>((event, emit) async{
      await _getServices(event, emit);
    });
  }

  Future<void> _getServices(
    GetServicesEvent event,
    Emitter<ServicesState> emit,
  ) async {
    emit(ServicesLoading());
    final result = await servicesRepo.getServices();
    result.fold(
      (services) => emit(ServicesSuccess(services: services)),
      (failure) => emit(ServicesFailure(message: failure.message)),
    );
  }
}
