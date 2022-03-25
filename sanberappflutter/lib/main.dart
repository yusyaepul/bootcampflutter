import 'package:flutter/material.dart';
//import 'package:sanberappflutter/Tugas/Tugas11/Telegram.dart';
//import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
//import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';
//import 'package:sanberappflutter/Tugas/Tugas14/get_data.dart';
import 'package:sanberappflutter/Tugas/Tugas15/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
