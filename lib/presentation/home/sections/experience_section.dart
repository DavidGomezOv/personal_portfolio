import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: experienceSectionKey,
      width: double.infinity,
      height: 650,
      color: Colors.transparent,
      child: const Center(
        child: Text('02. Experience'),
      ),
    );
  }
}
