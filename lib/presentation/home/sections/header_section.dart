import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/texts_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

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
          const AutoSizeText(
            'Hello, my name is',
            minFontSize: 16,
            maxLines: 1,
            style: TextsStyles.headerText,
          ),
          const AutoSizeText(
            'David Gomez.',
            minFontSize: 50,
            maxLines: 1,
            style: TextsStyles.subHeaderText,
          ),
          AutoSizeText(
            'I\'m a Flutter Mobile Developer.',
            minFontSize: 40,
            maxLines: 2,
            style: TextsStyles.subHeaderText.copyWith(
              color: CustomColors.white9CA2B4,
              fontWeight: FontWeight.w500,
              fontSize: 70,
            ),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
