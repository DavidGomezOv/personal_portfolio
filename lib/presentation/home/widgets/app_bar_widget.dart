import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/buttons_styles.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/dimensions.dart';
import 'package:personal_portfolio/core/texts_styles.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';
import 'package:personal_portfolio/presentation/home/widgets/hover_button_animation_widget.dart';

AppBar customAppBar(BuildContext context) => AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 70,
      elevation: 0,
      flexibleSpace: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      CustomColors.blue191E29.withOpacity(.4),
                      CustomColors.blue191E29.withOpacity(.6),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: Dimensions.isMobileScreen(context)
          ? [
              Builder(builder: (context) {
                return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: const Icon(Icons.menu, size: 30),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              }),
              const SizedBox(width: 10),
            ]
          : _desktopActions,
    );

List<Widget> _desktopActions = [
  HoverButtonAnimationWidget(
    child: TextButton(
      onPressed: () => _navigateToSection(aboutMeSectionKey),
      style: ButtonsStyles.appBarButton,
      child: const AutoSizeText(
        '1. About me',
        minFontSize: 14,
        maxLines: 1,
        style: TextsStyles.appBarTextButton,
      ),
    ),
  ),
  HoverButtonAnimationWidget(
    child: TextButton(
      onPressed: () => _navigateToSection(experienceSectionKey),
      style: ButtonsStyles.appBarButton,
      child: const AutoSizeText(
        '2. Experience',
        minFontSize: 14,
        maxLines: 1,
        style: TextsStyles.appBarTextButton,
      ),
    ),
  ),
  HoverButtonAnimationWidget(
    child: TextButton(
      onPressed: () => _navigateToSection(projectsSectionKey),
      style: ButtonsStyles.appBarButton,
      child: const AutoSizeText(
        '3. Projects',
        minFontSize: 14,
        maxLines: 1,
        style: TextsStyles.appBarTextButton,
      ),
    ),
  ),
  HoverButtonAnimationWidget(
    child: TextButton(
      onPressed: () => _navigateToSection(contactSectionKey),
      style: ButtonsStyles.appBarButton,
      child: const AutoSizeText(
        '4. Contact',
        minFontSize: 14,
        maxLines: 1,
        style: TextsStyles.appBarTextButton,
      ),
    ),
  ),
  const SizedBox(width: 8),
  Container(
    padding: const EdgeInsets.symmetric(vertical: 14),
    child: HoverButtonAnimationWidget(
      child: TextButton(
        onPressed: () {},
        style: ButtonsStyles.resumeAppBarButton,
        child: AutoSizeText(
          'Resume',
          minFontSize: 14,
          maxLines: 1,
          style: TextsStyles.appBarTextButton
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    ),
  ),
  const SizedBox(width: 24),
];

void _navigateToSection(GlobalKey sectionKey) => Scrollable.ensureVisible(
      sectionKey.currentContext!,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
