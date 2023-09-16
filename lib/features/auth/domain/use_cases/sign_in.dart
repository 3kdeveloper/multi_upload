import 'package:multi_upload_pro/features/auth/data/repositories/auth_repositories_imp.dart';
import 'package:multi_upload_pro/features/auth/domain/entities/auth.dart';

import '../../../../core/constants/export.dart';

class SignInUseCase {
  final AuthRepositoriesImp _authRepositoriesImp;

  SignInUseCase(this._authRepositoriesImp);

  Future<void> call({required AuthEntity authEntity}) async =>
      await _authRepositoriesImp.signIn(
          authEntity: AuthEntity(
        email: authEntity.email ?? '',
        password: authEntity.password ?? '',
      ));
}
