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
      drawer: SafeArea(
        child: Drawer(
          elevation: 100,
          backgroundColor: alternativeColor,
          child: NavigationBanner(location: "Skills"),
        ),
      ),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: CodedName(),
              backgroundColor: darkColor,
            ),
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
                            color: alternativeColor,
                          ),
                        ),
                        Expanded(flex: 2, child: SkillsSection()),
                      ],
                    )),
                NavigationBanner(location: "Skills"),
              ],
            )
          : Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: ListView(children: [
                      Container(height: 250, child: Knowledges()),
                      Container(height: 400, child: SkillsSection())
                    ]),
                  ),
                ),
              ],
            ),
    );
  }
}
