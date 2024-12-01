import 'dart:typed_data';
import 'package:tflite_flutter/tflite_flutter.dart';

class TFLiteInference {
  late Interpreter _interpreter;

  TFLiteInference() {
    _loadModel();
  }

  void _loadModel() async {
    _interpreter = await Interpreter.fromAsset('yolov8n.tflite');
  }

  List<dynamic> runModel(Uint8List inputImage) {
    // Resize and normalize the image here (example: 640x640)
    var input = inputImage; // Processed input
    var output = List.filled(1000, 0); // Change based on output shape
    _interpreter.run(input, output);
    return output;
  }
}
