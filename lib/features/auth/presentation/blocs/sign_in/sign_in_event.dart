part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.onSignIn(
      {required String email, required String password}) = OnSignIn;
}
