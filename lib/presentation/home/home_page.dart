import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/dimensions.dart';
import 'package:personal_portfolio/presentation/home/widgets/app_bar_widget.dart';
import 'package:personal_portfolio/presentation/home/widgets/drawer_widget.dart';
import 'package:personal_portfolio/presentation/home/sections/header_section.dart';
import 'package:personal_portfolio/presentation/home/widgets/mail_column_widget.dart';
import 'package:personal_portfolio/presentation/home/widgets/social_column_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context),
      body: const _Body(),
      endDrawer: const DrawerWidget(),
      drawerScrimColor: Colors.black.withOpacity(.7),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.deviceScreenWidth(context),
      color: CustomColors.blue132D46,
      child: Row(
        children: [
          if (Dimensions.isDesktopScreen(context)) const SocialColumnWidget(),
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.isMobileScreen(context) ? 30 : 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const HeaderSection(),
                    Container(
                      width: double.infinity,
                      height: 650,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text('01. About me'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 650,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text('02. Experience'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 650,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text('03. Projects'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 650,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text('04. Contact'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (Dimensions.isDesktopScreen(context)) const MailColumnWidget(),
        ],
      ),
    );
  }
}
