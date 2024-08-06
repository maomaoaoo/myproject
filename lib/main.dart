import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',  // set properties for class
       home: LoginPage(),
      );
  }
}