import '../constants/export.dart';

class Validation {
  static String? validateUserName(String? userName) {
    if (userName?.isEmpty ?? true) {
      return 'User name is required.';
    } else if (!(userName?.isValidUserName ?? true)) {
      return 'Please provide a valid name.';
    } else {
      return null;
    }
  }

  static String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return 'Email is required.';
    } else if (!(email?.isValidEmail ?? true)) {
      return 'Please provide a valid email.';
    } else {
      return null;
    }
  }

  static String? validatePassword(
    String? password, {
    String? confirmPassword,
    String? newPassword,
    bool? isConfirmPassword = false,
    bool? isNewPassword = false,
  }) {
    if (password?.isEmpty ?? true) {
      return 'Password is required.';
    } else if (!(password?.isValidPassword ?? true)) {
      return 'Please provide valid password.';
    } else {
      return null;
    }
  }

  static String? validText(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Text is required.';
    } else if (!(text?.isValidText ?? true)) {
      return 'Please provide a valid paragraph.';
    } else {
      return null;
    }
  }
}
