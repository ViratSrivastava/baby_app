import 'package:flutter/services.dart';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

class PlatformChannel {
  static const _platform = MethodChannel('com.example.babylockapp/platform');

  static Future<void> lockPhone() async {
    try {
      await _platform.invokeMethod('lockPhone');
    } on PlatformException catch (e) {
      debugPrint("Error locking phone: $e");
    }
  }

  static Future<List<String>> getRunningApps() async {
    try {
        final List<String> apps = await _platform.invokeMethod('getRunningApps');
        return List<String>.from(apps);
      } on PlatformException catch (e) {
        developer.log("Error fetching running apps: $e");
        debugPrint("Error fetching running apps: $e");
        return [];
    }
  }
}
