import 'package:flutter/material.dart';

class UsageGuideScreen extends StatelessWidget {
  const UsageGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usage Guide'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'How to Use the App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Open the app.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '2. Navigate through the main menu to access different features.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '3. Grant administrator permission when prompted. This permission is necessary for the app to capture images while other applications are running.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '4. The app will capture images every 10 seconds at a resolution of 640x640 pixels when restricted applications (like Instagram, YouTube, or TikTok) are active.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '5. To toggle the image capture feature on or off, press the Volume Up + Power button simultaneously. A prompt will appear at the bottom of the screen indicating whether the model is on or off.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '6. If you want to disable image capture temporarily (for example, if a baby is using the phone), you can do so using the same button combination or through the app\'s UI.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '7. For more help, visit our support page or contact us.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}