import 'package:multi_upload_pro/core/constants/export.dart';
import 'package:multi_upload_pro/features/auth/data/models/auth.dart';
import 'package:multi_upload_pro/features/auth/domain/entities/auth.dart';

import '../../domain/repositories/auth_repositories.dart';
import '../data_sources/remote/auth_service_firebase.dart';

class AuthRepositoriesImp implements AuthRepositories {
  final AuthRemoteDataSourceFirebase _authRemoteDataSourceFirebase;

  AuthRepositoriesImp(this._authRemoteDataSourceFirebase);

  @override
  Future<void> signIn({required AuthEntity authEntity}) async =>
      await _authRemoteDataSourceFirebase.signInWithEmailAndPassword(
          authModel: AuthModel.fromEntity(AuthEntity(
        email: authEntity.email ?? '',
        password: authEntity.password ?? '',
      )));

  @override
  Future<void> signOut() async => await _authRemoteDataSourceFirebase.signOut();

  @override
  Future<void> signUp({required AuthEntity authEntity}) async =>
      await _authRemoteDataSourceFirebase.signUpWithEmailAndPassword(
          authModel: AuthModel.fromEntity(AuthEntity(
        uid: authEntity.uid ?? '',
        name: authEntity.name ?? '',
        email: authEntity.email ?? '',
        password: authEntity.password ?? '',
      )));
}
