import 'dart:convert';
import 'package:flutter/services.dart'
    show rootBundle; //permite acceder a los assest y a su servicios
import 'package:practica_2/models/users.dart';

class UserSevice {
  Future<List<User>> fetchUser() async {
    try {
      final response = await rootBundle.loadString('assets/users.json');
      final List<dynamic> data = jsonDecode(response);

      return data.map((userJson) => User.fromJson(userJson)).toList();
    } catch (e) {
      print("algo $e");
      return [];
    }
  }
}
