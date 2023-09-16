import 'package:multi_upload_pro/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:multi_upload_pro/features/auth/data/models/auth.dart';

import '../../../../../core/constants/export.dart';

class AuthRemoteDataSourceFirebase implements AuthRemoteDataSource {
  final _auth = sl.get<FirebaseAuth>();
  final _usersCollection =
      sl.get<FirebaseFirestore>().collection(Constants.usersCollection);

  @override
  Future<void> signInWithEmailAndPassword(
          {required AuthModel authModel}) async =>
      await _auth.signInWithEmailAndPassword(
        email: authModel.email ?? '',
        password: authModel.password ?? '',
      );

  @override
  Future<void> signOut() async => await _auth.signOut();

  @override
  Future<void> signUpWithEmailAndPassword(
          {required AuthModel authModel}) async =>
      await _auth
          .createUserWithEmailAndPassword(
        email: authModel.email ?? '',
        password: authModel.password ?? '',
      )
          .then((userCredential) {
        if (userCredential.user?.uid != null) {
          _usersCollection
              .doc(userCredential.user?.uid)
              .set(authModel.toJson());
        }
      });
}
