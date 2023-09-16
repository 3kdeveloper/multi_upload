import '../../core/constants/export.dart';
import '../../features/auth/presentation/blocs/sign_in/sign_in_bloc.dart';
import '../../features/auth/presentation/blocs/sign_up/sign_up_bloc.dart';
import '../../features/auth/presentation/screens/sign_in/sign_in_screen.dart';
import '../../features/auth/presentation/screens/sign_up/sign_up_screen.dart';
import '../../features/content_management/presentation/bloc/content_management/content_management_bloc.dart';
import '../../features/content_management/presentation/screens/detail/detail_screen.dart';
import '../../features/content_management/presentation/screens/home/home_screen.dart';
import '../../features/content_management/presentation/screens/upload_data/upload_data_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    String route = routeSettings.name ?? '';
    switch (route) {
      case RouteNames.signInScreen:
        return NoAnimationMaterialPageRoute(
            builder: (_) => BlocProvider<SignInBloc>(
                create: (context) => sl(), child: const SignInScreen()));

      case RouteNames.signUpScreen:
        return NoAnimationMaterialPageRoute(
            builder: (_) => BlocProvider<SignUpBloc>(
                create: (context) => sl(), child: const SignUpScreen()));

      case RouteNames.homeScreen:
        return NoAnimationMaterialPageRoute(builder: (_) => HomeScreen());

      case RouteNames.detailScreen:
        final args = routeSettings.arguments as DetailScreenArgs;
        return NoAnimationMaterialPageRoute(
            builder: (_) => DetailScreen(args: args));

      case RouteNames.uploadDataScreen:
        final args = routeSettings.arguments as UploadDataScreenArgs;
        return NoAnimationMaterialPageRoute(
            builder: (_) => BlocProvider<ContentManagementBloc>(
                create: (context) => sl(),
                child: UploadDataScreen(args: args)));

      default:
        return null;
    }
  }

  void dispose() {}
}
