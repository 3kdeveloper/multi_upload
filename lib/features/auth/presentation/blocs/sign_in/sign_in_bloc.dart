import 'package:multi_upload_pro/features/auth/data/models/auth.dart';
import 'package:multi_upload_pro/features/auth/domain/use_cases/sign_in.dart';

import '../../../../../core/constants/export.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._signInUseCase) : super(const SignInState.signInState()) {
    on<OnSignIn>(_onSignIn);
  }

  final SignInUseCase _signInUseCase;

  Future<FutureOr<void>> _onSignIn(
      OnSignIn event, Emitter<SignInState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    try {
      await _signInUseCase
          .call(
              authEntity:
                  AuthModel(email: event.email, password: event.password))
          .then((value) => emit(
              state.copyWith(requestStatus: const RequestStatusSuccess())));
    } on FirebaseAuthException catch (e) {
      logger.e('Exception: ${e.code}');
      if (e.code == 'invalid-email') {
        emit(state.copyWith(
            requestStatus:
                const RequestStatusFailure('Please provide a valid email.')));
      } else {
        emit(state.copyWith(
            requestStatus: const RequestStatusFailure(
                'Please provide a valid credential.')));
      }
    } catch (e) {
      emit(state.copyWith(requestStatus: RequestStatusFailure(e.toString())));
    }
  }
}
