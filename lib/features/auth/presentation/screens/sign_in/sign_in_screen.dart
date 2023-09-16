import 'package:fluttertoast/fluttertoast.dart';
import 'package:multi_upload_pro/features/auth/presentation/blocs/sign_in/sign_in_bloc.dart';

import '../../../../../core/constants/export.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _signInFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) async =>
          await _signBlocListener(state, context),
      child: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.w * ScreenPercentage.screenSize_4),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Form(
                      key: _signInFormKey,
                      child: Column(
                        children: [
                          SvgPicture.asset(ImagesResource.signIn,
                              height:
                                  context.h * ScreenPercentage.screenSize_35),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_3),
                          CustomTextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: StringsResource.enterEmail,
                            prefixIcon: IconButton(
                                icon: const Icon(Icons.email_outlined),
                                onPressed: () {}),
                            validator: (email) =>
                                Validation.validateEmail(email),
                          ),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
                          CustomTextFormField(
                            controller: _passwordController,
                            hintText: StringsResource.enterPassword,
                            prefixIcon: IconButton(
                                icon: const Icon(Icons.lock_outline),
                                onPressed: () {}),
                            validator: (password) =>
                                Validation.validatePassword(password),
                          ),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_7),
                          BlocBuilder<SignInBloc, SignInState>(
                            builder: (context, state) {
                              return ToggleCustomButton(
                                requestStatus: state.requestStatus,
                                btnText: StringsResource.signIn,
                                onPressed: () {
                                  if (_signInFormKey.currentState?.validate() ??
                                      true) {
                                    context.unFocusKeyboard();
                                    context.read<SignInBloc>().add(OnSignIn(
                                        email: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim()));
                                  }
                                },
                              );
                            },
                          ),
                          const Spacer(),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
                          AuthFooter(
                            text: StringsResource.araYouNewbie,
                            btnText: StringsResource.signUp,
                            onTap: () => Navigator.pushNamed(
                                context, RouteNames.signUpScreen),
                          ),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Future<void> _signBlocListener(
      SignInState state, BuildContext context) async {
    final requestStatus = state.requestStatus;
    if (requestStatus is RequestStatusSuccess) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteNames.homeScreen, (route) => false);
    } else if (state.requestStatus is RequestStatusFailure) {
      await Fluttertoast.showToast(
          msg: state.requestStatus.error.toString(),
          gravity: ToastGravity.BOTTOM);
    } else {
      const SizedBox.shrink();
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
