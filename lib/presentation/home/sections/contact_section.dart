import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/home/home_page.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactSectionKey,
      width: double.infinity,
      height: 650,
      color: Colors.transparent,
      child: const Center(
        child: Text('04. Contact'),
      ),
    );
  }
}
