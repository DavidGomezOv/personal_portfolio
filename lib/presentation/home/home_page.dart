import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/colors.dart';
import 'package:personal_portfolio/core/dimensions.dart';
import 'package:personal_portfolio/presentation/home/sections/about_me_section.dart';
import 'package:personal_portfolio/presentation/home/sections/contact_section.dart';
import 'package:personal_portfolio/presentation/home/sections/experience_section.dart';
import 'package:personal_portfolio/presentation/home/sections/projects_section.dart';
import 'package:personal_portfolio/presentation/home/widgets/app_bar_widget.dart';
import 'package:personal_portfolio/presentation/home/widgets/drawer_widget.dart';
import 'package:personal_portfolio/presentation/home/sections/header_section.dart';
import 'package:personal_portfolio/presentation/home/widgets/mail_column_widget.dart';
import 'package:personal_portfolio/presentation/home/widgets/social_column_widget.dart';

var aboutMeSectionKey = GlobalKey();
var experienceSectionKey = GlobalKey();
var projectsSectionKey = GlobalKey();
var contactSectionKey = GlobalKey();

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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    HeaderSection(),
                    AboutMeSection(),
                    ExperienceSection(),
                    ProjectsSection(),
                    ContactSection(),
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
