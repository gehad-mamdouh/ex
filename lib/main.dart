import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/home_screen.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: HomeScreen.routeName, routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
    });
  }
}
