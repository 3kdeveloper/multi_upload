part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.signInState(
          {@Default(InitialRequestStatus()) RequestStatus requestStatus}) =
      _SignInState;
}
