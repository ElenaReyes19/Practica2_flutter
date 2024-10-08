import 'package:flutter/material.dart';
import 'package:practica_2/models/users.dart';
import 'package:practica_2/services/user_sevice.dart';

class UserViewmodel extends ChangeNotifier {
  final UserSevice _userSevice = UserSevice();
  List<User> _users = [];

  List<User> get users => _users;

  Future<void> fetchUsers() async {
    _users = await _userSevice.fetchUser();
    notifyListeners();
  }
}
