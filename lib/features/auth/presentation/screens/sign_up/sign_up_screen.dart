import 'package:multi_upload_pro/features/auth/presentation/blocs/sign_up/sign_up_bloc.dart';

import '../../../../../core/constants/export.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _signUpFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) async =>
          await _signUpBlocListener(state, context),
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
                      key: _signUpFormKey,
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
                          SvgPicture.asset(ImagesResource.signUp,
                              height:
                                  context.h * ScreenPercentage.screenSize_35),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
                          CustomTextFormField(
                            controller: _nameController,
                            hintText: StringsResource.enterName,
                            prefixIcon: IconButton(
                                icon: const Icon(Icons.person_outline),
                                onPressed: () {}),
                            validator: (name) =>
                                Validation.validateUserName(name),
                          ),
                          SizedBox(
                              height:
                                  context.h * ScreenPercentage.screenSize_2),
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
                          BlocBuilder<SignUpBloc, SignUpState>(
                            builder: (context, state) {
                              return ToggleCustomButton(
                                requestStatus: state.requestStatus,
                                btnText: StringsResource.signUp,
                                onPressed: () {
                                  if (_signUpFormKey.currentState?.validate() ??
                                      true) {
                                    context.unFocusKeyboard();
                                    context.read<SignUpBloc>().add(OnSignUp(
                                          email: _emailController.text.trim(),
                                          password:
                                              _passwordController.text.trim(),
                                          name: _nameController.text.trim(),
                                        ));
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
                            text: StringsResource.alreadyHaveAccount,
                            btnText: StringsResource.signIn,
                            onTap: () => Navigator.pushNamed(
                                context, RouteNames.signInScreen),
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

  Future<void> _signUpBlocListener(
      SignUpState state, BuildContext context) async {
    final requestStatus = state.requestStatus;
    if (requestStatus is RequestStatusSuccess) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteNames.homeScreen, (route) => false);
    } else if (state.requestStatus is RequestStatusFailure) {
      logger.f(state.requestStatus.error.toString());
      await Fluttertoast.showToast(
          msg: state.requestStatus.error.toString(),
          gravity: ToastGravity.BOTTOM);
    } else {
      const SizedBox.shrink();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
