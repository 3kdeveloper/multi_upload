import 'core/constants/export.dart';
import 'features/auth/data/data_sources/remote/auth_service_firebase.dart';
import 'features/auth/data/repositories/auth_repositories_imp.dart';
import 'features/auth/domain/use_cases/sign_in.dart';
import 'features/auth/domain/use_cases/sign_up.dart';
import 'features/auth/presentation/blocs/sign_in/sign_in_bloc.dart';
import 'features/auth/presentation/blocs/sign_up/sign_up_bloc.dart';
import 'features/content_management/data/data_sources/remote/content_management_service_firebase.dart';
import 'features/content_management/data/repositories/content_management_repositories_imp.dart';
import 'features/content_management/domain/use_cases/upload_images_and_pdfs.dart';
import 'features/content_management/domain/use_cases/upload_text.dart';
import 'features/content_management/domain/use_cases/upload_text_and_images.dart';
import 'features/content_management/domain/use_cases/upload_text_and_pdfs.dart';
import 'features/content_management/domain/use_cases/upload_text_images_and_pdfs.dart';
import 'features/content_management/presentation/bloc/content_management/content_management_bloc.dart';

Future<void> initDependancies() async {
  /// App Router
  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  /// Firebase Instances
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  sl.registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);

  /// Firebase Services
  sl.registerLazySingleton<AuthRemoteDataSourceFirebase>(
      () => AuthRemoteDataSourceFirebase());
  sl.registerLazySingleton<ContentManagementServiceFirebase>(
      () => ContentManagementServiceFirebase());

  /// Repositories
  sl.registerLazySingleton<AuthRepositoriesImp>(
      () => AuthRepositoriesImp(sl()));
  sl.registerLazySingleton<ContentManagementRepositoriesImp>(
      () => ContentManagementRepositoriesImp(sl()));

  /// Use Cases
  sl.registerLazySingleton<SignInUseCase>(() => SignInUseCase(sl()));
  sl.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(sl()));
  sl.registerLazySingleton<UploadTextUseCase>(() => UploadTextUseCase(sl()));
  sl.registerLazySingleton<UploadImagesAndPdfsUseCase>(
      () => UploadImagesAndPdfsUseCase(sl()));
  sl.registerLazySingleton<UploadTextAndImagesUseCase>(
      () => UploadTextAndImagesUseCase(sl()));
  sl.registerLazySingleton<UploadTextAndPdfsUseCase>(
      () => UploadTextAndPdfsUseCase(sl()));
  sl.registerLazySingleton<UploadTextImagesAndPdfsUseCase>(
      () => UploadTextImagesAndPdfsUseCase(sl()));

  /// Blocs
  sl.registerFactory<SignInBloc>(() => SignInBloc(sl()));
  sl.registerFactory<SignUpBloc>(() => SignUpBloc(sl()));
  sl.registerFactory<ContentManagementBloc>(
      () => ContentManagementBloc(sl(), sl(), sl(), sl(), sl()));
}
