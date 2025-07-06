class FormValidator {
  /// Validate Empty Text
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return "$fieldName is required.";
    }

    return null;
  }

  /// Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required.";
    }

    // Regular expression for email validataion
    final regexp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!regexp.hasMatch(value)) {
      return "Invalid email address.";
    }

    return null;
  }

  /// Validate Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone Number is required.";
    }

    // Check for 11 digits pakistan phone number
    if (!value.contains(RegExp(r'^03[0-9]{9}$'))) {
      return "Invalid phone number format (11 digits required).";
    }

    return null;
  }

  /// Validate Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required.";
    }

    // Check for password length
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }

    // Check for uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain one uppercase letter.";
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number.";
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character.";
    }

    return null;
  }
}
