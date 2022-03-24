import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/Telegram.dart';
import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';
import 'package:sanberappflutter/Tugas14/get_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetDataScreen(),
    );
  }
}
