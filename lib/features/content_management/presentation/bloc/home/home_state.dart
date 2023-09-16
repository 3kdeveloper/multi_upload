part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.onHomeState({
    @Default(InitialRequestStatus()) RequestStatus requestStatus,
  }) = _HomeState;
}
