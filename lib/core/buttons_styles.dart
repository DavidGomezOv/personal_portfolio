import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';

class ButtonsStyles {
  static ButtonStyle appBarButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return CustomColors.green01C38D;
        }
        return Colors.white;
      },
    ),
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
  );

  static ButtonStyle resumeAppBarButton = ButtonStyle(
    fixedSize: const MaterialStatePropertyAll<Size>(Size.fromWidth(100)),
    shape: MaterialStatePropertyAll<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    side: MaterialStateProperty.resolveWith<BorderSide>(
      (states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return const BorderSide(
            width: 1,
            color: Colors.transparent,
          );
        }
        return const BorderSide(
          width: 1,
          color: CustomColors.green01C38D,
        );
      },
    ),
    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.hovered) ||
          states.contains(MaterialState.pressed)) {
        return CustomColors.green01C38D;
      }
      return Colors.transparent;
    }),
    foregroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.pressed)) {
          return CustomColors.blue191E29;
        }
        return CustomColors.green01C38D;
      },
    ),
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
  );
}
