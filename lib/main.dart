import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/restricted_apps_screen.dart';
import 'screens/settings_screen.dart';

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

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

          title: const Text('Counter App'),

        ),

        body: const Center(

          child: Text('0'),

        ),

        floatingActionButton: FloatingActionButton(

          onPressed: () {},

          child: const Icon(Icons.add),

        ),

      ),

    );

  }

}