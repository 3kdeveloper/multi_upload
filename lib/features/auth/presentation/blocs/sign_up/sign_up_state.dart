part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.signUpState(
          {@Default(InitialRequestStatus()) RequestStatus requestStatus}) =
      _SignUpState;
}
