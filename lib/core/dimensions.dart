import 'package:flutter/cupertino.dart';

class Dimensions {
  static double deviceScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static bool isMobileScreen(BuildContext context) =>
      deviceScreenWidth(context) < 530;

  static bool isDesktopScreen(BuildContext context) =>
      deviceScreenWidth(context) > 530;
}
