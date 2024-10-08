import 'package:flutter/material.dart';
import 'package:practica_2/viewmodels/user_viewmodel.dart';
import 'package:practica_2/views/user_list_view.dart';
import 'package:provider/provider.dart';
import 'package:practica_2/viewmodels/user_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewmodel(),
      child: MaterialApp(
        home: UserListView(),
      ),
    );
  }
}
