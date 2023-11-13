import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';

class SocialColumnWidget extends StatelessWidget {
  const SocialColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 2,
            height: MediaQuery.sizeOf(context).height / 8,
            color: CustomColors.whiteDBE5FF,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, size: 30, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, size: 30, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, size: 30, color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              width: 1,
              color: CustomColors.whiteDBE5FF,
            ),
          ),
        ],
      ),
    );
  }
}
