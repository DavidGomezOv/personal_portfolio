import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutMeSectionKey,
      width: double.infinity,
      height: 650,
      color: Colors.transparent,
      child: const Center(
        child: Text('01. About me'),
      ),
    );
  }
}
