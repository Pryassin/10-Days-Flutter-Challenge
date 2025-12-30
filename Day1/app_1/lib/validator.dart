class Validator {
  static String? email(String? value) {
    if (value == null||value!.isEmpty) {
      return 'Email Required';
    }
    if (!value.contains("@")) {
      return 'Invalid Email';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.length < 6) {
      return 'Please Use a Strong Password';
    }
    return null;
  }
}
