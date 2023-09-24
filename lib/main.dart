// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_facebook/login.dart';
import 'package:flutter_facebook/signup.dart';
import 'package:flutter_facebook/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        "/Login": (context) => const Login(),
        "/Signup": (context) => const Signup(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
