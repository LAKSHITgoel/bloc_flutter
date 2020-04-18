class ValidationMixin {
  String validateEmail(String email) {
    // return null if valid
    if (!email.contains("@")) {
      return "Enter a valid email";
    }
    return null;
  }

  String validatePassword(String password) {
    // return null if valid
    if (password.length < 4) {
      return "Password must be at least 4 characters";
    }
    return null;
  }
}
