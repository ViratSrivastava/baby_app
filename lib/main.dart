import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BabyLockApp());
}

class BabyLockApp extends StatelessWidget {
  const BabyLockApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Lock App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
