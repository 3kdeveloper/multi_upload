part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.onSignUp({
    required String email,
    required String password,
    required String name,
  }) = OnSignUp;
}
