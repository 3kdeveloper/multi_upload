import 'core/constants/export.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await initDependancies();
  SvgUtils.preCacheSVGs();
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _currentUserUid = sl.get<FirebaseAuth>().currentUser?.uid ?? '';

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsResource.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: _currentUserUid.isNotEmpty
          ? RouteNames.homeScreen
          : RouteNames.signInScreen,
      onGenerateRoute: sl.get<AppRouter>().generateRoute,
    );
  }
}
