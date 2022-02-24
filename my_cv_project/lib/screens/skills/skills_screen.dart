import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';
import 'package:my_cv_project/responsive.dart';
import 'package:my_cv_project/screens/skills/knowledges.dart';
import 'package:my_cv_project/screens/skills/skills_section.dart';

import '../../constants.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Responsive.isDesktop(context)
          ? Column(
              children: [
                CodedName(),
                Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Knowledges(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: VerticalDivider(
                            color: primaryColor,
                          ),
                        ),
                        Expanded(flex: 2, child: SkillsSection()),
                      ],
                    )),
                NavigationBanner(),
              ],
            )
          : Column(
              children: [
                CodedName(),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 800,
                    child: ListView(children: [
                      Container(height: 315, child: Knowledges()),
                      Container(height: 400, child: SkillsSection())
                    ]),
                  ),
                ),
                NavigationBanner(),
              ],
            ),
    );
  }
}
