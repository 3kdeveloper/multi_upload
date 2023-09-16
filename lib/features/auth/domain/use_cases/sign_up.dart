import 'package:multi_upload_pro/features/auth/data/models/auth.dart';
import 'package:multi_upload_pro/features/auth/domain/entities/auth.dart';

import '../../../../core/constants/export.dart';
import '../../data/repositories/auth_repositories_imp.dart';

class SignUpUseCase {
  final AuthRepositoriesImp _authRepositoriesImp;

  SignUpUseCase(this._authRepositoriesImp);

  Future<void> call({required AuthEntity authEntity}) async =>
      await _authRepositoriesImp.signUp(
          authEntity: AuthEntity(
        name: authEntity.name ?? '',
        uid: authEntity.uid ?? '',
        email: authEntity.email ?? '',
        password: authEntity.password ?? '',
      ));
}
