import 'package:flutter/material.dart';
import 'package:project1/loginScreen.dart';
import 'package:project1/screens/forgot-password.dart';
import 'package:project1/screens/login1.dart';
import 'package:project1/screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => loginpagee(),
        'ForgetPassword': (context) => ForgetPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
      },
    );
  }
}
