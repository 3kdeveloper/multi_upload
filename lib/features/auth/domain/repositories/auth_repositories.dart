import 'package:multi_upload_pro/features/auth/domain/entities/auth.dart';

abstract class AuthRepositories {
  Future<void> signIn({required AuthEntity authEntity});

  Future<void> signUp({required AuthEntity authEntity});

  Future<void> signOut();
}
