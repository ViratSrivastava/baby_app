import 'package:flutter/material.dart';

class RestrictedAppsScreen extends StatefulWidget {
  const RestrictedAppsScreen({super.key});

  @override
  _RestrictedAppsScreenState createState() => _RestrictedAppsScreenState();
}

class _RestrictedAppsScreenState extends State<RestrictedAppsScreen> {
  // List of all available apps (You can fetch this dynamically with platform channels)
  final List<String> availableApps = [
    'Instagram',
    'YouTube',
    'TikTok',
    'Facebook',
    'WhatsApp'
  ];

  // User-selected restricted apps
  List<String> restrictedApps = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restricted Apps'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select apps to monitor:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: availableApps.length,
                itemBuilder: (context, index) {
                  final app = availableApps[index];
                  return ListTile(
                    title: Text(app),
                    trailing: Checkbox(
                      value: restrictedApps.contains(app),
                      onChanged: (bool? isChecked) {
                        setState(() {
                          if (isChecked == true) {
                            restrictedApps.add(app);
                          } else {
                            restrictedApps.remove(app);
                          }
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Save the restricted apps to local storage or shared preferences
          _saveRestrictedApps();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Restricted apps saved!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  void _saveRestrictedApps() async {
    // Save restricted apps to persistent storage
    // Use SharedPreferences or any local storage mechanism
    // Example:
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setStringList('restricted_apps', restrictedApps);

    // Placeholder: Simulate saving functionality
    debugPrint('Restricted apps saved: $restrictedApps');
  }
}
