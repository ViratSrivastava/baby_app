import 'package:flutter/material.dart';
import 'restricted_apps_screen.dart';
import 'usage_guide_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baby Lock App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RestrictedAppsScreen()),
              );
            },
            child: const Text('Restricted Apps'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UsageGuideScreen()),
              );
            },
            child: const Text('Usage Guide'),
          ),
        ],
      ),
    );
  }
}
