# baby_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

``` bash
baby_lock_app/
├── android/                         # Native Android code
├── ios/                             # Native iOS code
├── lib/
│   ├── main.dart                    # Entry point
│   ├── screens/                     # All UI screens
│   │   ├── home_screen.dart         # Home page with features
│   │   ├── restricted_apps_screen.dart  # UI for restricted apps
│   │   └── usage_guide_screen.dart  # Usage guide page
│   ├── services/                    # Core services
│   │   ├── baby_detector_service.dart # Detects baby face
│   │   ├── image_capture_service.dart # Captures images periodically
│   │   └── platform_channel.dart    # Platform-specific methods
│   └── utils/                       # Utility files
│       └── tflite_inference.dart    # Runs YOLO model inference
├── assets/                          # Static assets
│   ├── images/                      # Store placeholder images
│   └── model/                       # Store YOLO model file
│       └── yolov8n.tflite           # TFLite model file
├── pubspec.yaml                     # Project dependencies
├── README.md                        # Documentation
└── test/                            # Test files
```