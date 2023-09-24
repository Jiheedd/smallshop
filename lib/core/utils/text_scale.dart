import 'package:flutter/widgets.dart';

class TextScaleUtil {
  static double getScale(BuildContext context) {
    double scale = 1.0;

    if (MediaQuery.of(context).size.width > 600) {
      scale = 1.1;
    }
    if (MediaQuery.of(context).size.width > 1200) {
      scale = 1.2;
    }

    return scale;
  }
}
