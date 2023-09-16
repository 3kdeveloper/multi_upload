import '../../../../core/constants/export.dart';
import '../../data/repositories/auth_repositories_imp.dart';

class SignOutUseCase {
  final AuthRepositoriesImp _authRepositoriesImp;

  SignOutUseCase(this._authRepositoriesImp);

  Future<void> call() async => await _authRepositoriesImp.signOut();
}
