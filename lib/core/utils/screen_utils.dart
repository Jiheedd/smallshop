import 'package:flutter/widgets.dart';

class ScreenUtil {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;
  static double bottomBarHeight(BuildContext context) => MediaQuery.of(context).padding.bottom;
  static double textScaleFactor(BuildContext context) => MediaQuery.of(context).textScaleFactor;
}
