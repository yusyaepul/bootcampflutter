import 'Quiz3/screen/login/login_screen.dart';
import 'package:sanberappflutter/Latihan/Latihan-1/get_data_screen.dart';
import 'package:flutter/material.dart';

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
      home: GetDataScreenStateManagement(),
    );
  }
}
