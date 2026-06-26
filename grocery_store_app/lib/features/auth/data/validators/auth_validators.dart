class AuthValidators {
  static String? validateEmail({required String? value}) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validatePassword({required String? value}) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    final errors = <String>[];

    if (value.length < 8) {
      errors.add('• At least 8 characters');
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      errors.add('• One uppercase letter');
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      errors.add('• One lowercase letter');
    }

    if (!RegExp(r'\d').hasMatch(value)) {
      errors.add('• One number');
    }

    if (errors.isNotEmpty) {
      return errors.join('\n');
    }

    return null;
  }

  static String? validateName({required String? value,required  String fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }

    if (value.trim().length < 2) {
      return '$fieldName is too short';
    }

    return null;
  }

  static String? validateLoginEmail({required String? value}) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }

    return null;
  }

  static String? validateLoginPassword({required String? value}) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }

    return null;
  }
}
