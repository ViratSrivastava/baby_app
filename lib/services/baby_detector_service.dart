import 'package:flutter/foundation.dart';
import '../utils/tflite_inference.dart';

class BabyDetectorService {
  final TFLiteInference _inference = TFLiteInference();
  final double confidenceThreshold = 0.65;

  bool detectBabyFace(Uint8List image) {
    var predictions = _inference.runModel(image);
    for (var pred in predictions) {
      if (pred['class'] == 'babynormal' && pred['confidence'] > confidenceThreshold) {
        return true;
      }
    }
    return false;
  }
}
