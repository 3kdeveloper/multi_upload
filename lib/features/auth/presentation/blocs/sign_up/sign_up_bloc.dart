import 'package:multi_upload_pro/features/auth/data/models/auth.dart';
import 'package:multi_upload_pro/features/auth/domain/use_cases/sign_up.dart';

import '../../../../../core/constants/export.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._signUpUseCase) : super(const SignUpState.signUpState()) {
    on<OnSignUp>(_onSignUp);
  }

  final SignUpUseCase _signUpUseCase;
  final currentUserUid = sl.get<FirebaseAuth>().currentUser?.uid;

  Future<FutureOr<void>> _onSignUp(
      OnSignUp event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    try {
      await _signUpUseCase
          .call(
              authEntity: AuthModel(
        uid: currentUserUid ?? '',
        name: event.name,
        email: event.email,
        password: event.password,
      ))
          .then((value) {
        logger.f('success');
        emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
      });
    } on FirebaseAuthException catch (e) {
      logger.e('Exception: ${e.code}');
      if (e.code == 'email-already-in-use') {
        emit(state.copyWith(
            requestStatus:
                const RequestStatusFailure('Email is already in use.')));
      } else {
        emit(state.copyWith(
            requestStatus:
                const RequestStatusFailure('Something went wrong!')));
      }
    } catch (e) {
      emit(state.copyWith(requestStatus: RequestStatusFailure(e.toString())));
    }
  }
}
