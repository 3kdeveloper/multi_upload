import '../../../../../core/constants/export.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.onHomeState()) {
    on<OnFetchData>(_onFetchData);
  }

  FutureOr<void> _onFetchData(event, Emitter<HomeState> emit) {}
}
