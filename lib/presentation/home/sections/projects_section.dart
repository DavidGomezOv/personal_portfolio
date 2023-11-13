import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: projectsSectionKey,
      width: double.infinity,
      height: 650,
      color: Colors.transparent,
      child: const Center(
        child: Text('03. Projects'),
      ),
    );
  }
}
