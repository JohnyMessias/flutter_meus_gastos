import 'package:flutter/cupertino.dart';
import 'package:meus_gastos/models/user.dart';

class UserViewModel extends ChangeNotifier {
  final User _user;

  UserViewModel(this._user);
  String get name => _user.name;
  String get email => _user.email;
  String get password => _user.password;

  void updatePassword(String newPassword) {
    _user.password = newPassword;
    notifyListeners();
  }
}