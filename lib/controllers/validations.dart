class Validations {

  bool validEmail(String? email) {
    return email != null
        && email.isNotEmpty;
  }

  bool validPassword(String? password) {
    return password != null &&
        password.isNotEmpty &&
        password.length > 6;
  }
}