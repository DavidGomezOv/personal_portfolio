import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/buttons_styles.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/texts_styles.dart';
import 'package:personal_portfolio/presentation/home/widgets/hover_button_animation_widget.dart';

class MailColumnWidget extends StatelessWidget {
  const MailColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 1,
              color: CustomColors.whiteDBE5FF,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: HoverButtonAnimationWidget(
              child: RotatedBox(
                quarterTurns: 1,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonsStyles.appBarButton,
                  child: Text('david182400@gmail.com',
                      maxLines: 1,
                      style: TextsStyles.appBarTextButton
                          .copyWith(letterSpacing: 3)),
                ),
              ),
            ),
          ),
          Container(
            width: 2,
            height: MediaQuery.sizeOf(context).height / 8,
            color: CustomColors.whiteDBE5FF,
          ),
        ],
      ),
    );
  }
}
