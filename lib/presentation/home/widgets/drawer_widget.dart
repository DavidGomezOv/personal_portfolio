import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/buttons_styles.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/dimensions.dart';
import 'package:personal_portfolio/core/texts_styles.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _staggeredController;
  late List<Animation> animations;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    _staggeredController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _staggeredController,
            curve: const Interval(0, 1, curve: Curves.linear)));
    animations = [
      Tween(begin: const Offset(200, 0), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _staggeredController,
              curve: const Interval(0, 0.3, curve: Curves.easeOut))),
      Tween(begin: const Offset(300, 0), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _staggeredController,
              curve: const Interval(0, 0.4, curve: Curves.easeOut))),
      Tween(begin: const Offset(400, 0), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _staggeredController,
              curve: const Interval(0, 0.5, curve: Curves.easeOut))),
      Tween(begin: const Offset(500, 0), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _staggeredController,
              curve: const Interval(0, 0.6, curve: Curves.easeOut))),
      Tween(begin: const Offset(600, 0), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _staggeredController,
              curve: const Interval(0, 0.7, curve: Curves.easeOut))),
    ];
  }

  @override
  void dispose() {
    _staggeredController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Dimensions.deviceScreenWidth(context) / 1.4,
      backgroundColor: Colors.transparent,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  CustomColors.blue191E29.withOpacity(0),
                  CustomColors.blue132D46.withOpacity(1),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: _mapButtons(animations, opacityAnimation, context),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _mapButtons(
  List<Animation> animations,
  Animation opacityAnimation,
  BuildContext context,
) {
  final List<Widget> buttons = [];
  final buttonText = [
    '1. About me',
    '2. Experience',
    '3. Projects',
    '4. Contact',
  ];

  for (int i = 0; i < 5; i++) {
    buttons.add(
      AnimatedBuilder(
        animation: animations[i],
        builder: (context, child) {
          return Opacity(
            opacity: opacityAnimation.value,
            child: Transform.translate(
              offset: animations[i].value,
              child: child,
            ),
          );
        },
        child: i == 4
            ? SizedBox(
                width: 120,
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonsStyles.resumeAppBarButton,
                  child: AutoSizeText(
                    'Resume',
                    minFontSize: 12,
                    maxLines: 1,
                    style: TextsStyles.appBarTextButton.copyWith(
                      fontSize: 22,
                    ),
                  ),
                ),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonsStyles.appBarButton,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          buttonText[i]
                              .substring(0, buttonText[i].indexOf(' ')),
                          style: TextsStyles.headerText,
                        ),
                        Text(
                          buttonText[i].substring(buttonText[i].indexOf(' ')),
                          style: TextsStyles.appBarTextButton.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
      ),
    );
  }

  return buttons;
}
