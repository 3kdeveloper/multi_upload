import 'package:multi_upload_pro/features/auth/data/models/auth.dart';

abstract class AuthRemoteDataSource {
  Future<void> signUpWithEmailAndPassword({required AuthModel authModel});

  Future<void> signInWithEmailAndPassword({required AuthModel authModel});

  Future<void> signOut();
}
