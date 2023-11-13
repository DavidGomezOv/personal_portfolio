import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/texts_styles.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> opacityAnimation;
  late List<Animation<Offset>> animations;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0, 1, curve: Curves.linear)));
    animations = [
      Tween(begin: const Offset(0, 400), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _animationController,
              curve: const Interval(0, 0.2, curve: Curves.easeOut))),
      Tween(begin: const Offset(0, 400), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _animationController,
              curve: const Interval(0, 0.4, curve: Curves.easeOut))),
      Tween(begin: const Offset(0, 500), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _animationController,
              curve: const Interval(0, 0.6, curve: Curves.easeOut))),
      Tween(begin: const Offset(0, 600), end: const Offset(0, 0)).animate(
          CurvedAnimation(
              parent: _animationController,
              curve: const Interval(0, 0.8, curve: Curves.easeOut))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          AnimatedBuilder(
            animation: animations[0],
            builder: (context, child) => Opacity(
              opacity: opacityAnimation.value,
              child: Transform.translate(
                offset: animations[0].value,
                child: child,
              ),
            ),
            child: const AutoSizeText(
              'Hello, my name is',
              minFontSize: 16,
              maxLines: 1,
              style: TextsStyles.headerText,
            ),
          ),
          AnimatedBuilder(
            animation: animations[1],
            builder: (context, child) => Opacity(
              opacity: opacityAnimation.value,
              child: Transform.translate(
                offset: animations[1].value,
                child: child,
              ),
            ),
            child: const AutoSizeText(
              'David Gomez.',
              minFontSize: 50,
              maxLines: 1,
              style: TextsStyles.subHeaderText,
            ),
          ),
          AnimatedBuilder(
            animation: animations[2],
            builder: (context, child) => Opacity(
              opacity: opacityAnimation.value,
              child: Transform.translate(
                offset: animations[2].value,
                child: child,
              ),
            ),
            child: AutoSizeText(
              'I\'m a Flutter Mobile Developer.',
              minFontSize: 40,
              maxLines: 2,
              style: TextsStyles.subHeaderText.copyWith(
                color: CustomColors.white9CA2B4,
                fontWeight: FontWeight.w500,
                fontSize: 70,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: animations[3],
            builder: (context, child) => Opacity(
              opacity: opacityAnimation.value,
              child: Transform.translate(
                offset: animations[3].value,
                child: child,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              constraints: const BoxConstraints(
                maxWidth: 700,
              ),
              child: AutoSizeText(
                'I am a technologist in analysis and development of information systems with more than 3 years of experience in the development of applications oriented to mobile devices natively with Java, Kotlin and Jetpack Compose, and in the same way hybrids withFlutter. Additionally, I have knowledge in agile methodologies such as Scrum, Kanban, and Shape up, also management of theFirebase platform and its tools, databases, along with experience in developing applications for the banking sector oriented toAndroid POS terminals.',
                minFontSize: 18,
                maxLines: 10,
                style: TextsStyles.headerText
                    .copyWith(color: CustomColors.white9CA2B4, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
