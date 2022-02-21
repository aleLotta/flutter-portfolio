import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "I'm a ...",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor),
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SkillBanner(
                  title: "Flutter Programmer",
                  icon: "icons/flutter_icon.svg",
                  description:
                      "I'm a self taught Web/Mobile developer using Dart language, still trying to learn new things to make my works flawless.",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                SkillBanner(
                    title: "Web Developer",
                    icon: "icons/html5.svg",
                    description:
                        "I have some knowledge in Web Applications, with HTML and CSS languages."),
                SizedBox(
                  height: defaultPadding,
                ),
                SkillBanner(
                    title: "Mobile Developer",
                    icon: "icons/smartphone_tablet.svg",
                    description:
                        "I can build some basic/medium level apps with a minimal and elegant design."),
                SizedBox(
                  height: defaultPadding,
                ),
                SkillBanner(
                    title: "Database Programmer",
                    icon: "icons/sql_db.svg",
                    description:
                        "I can create basic database managment systems (DBMS) using PostgreSQL and Java."),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SkillBanner extends StatelessWidget {
  const SkillBanner({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String description;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      width: 420,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  color: Colors.white,
                  height: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 5),
            Text(
              description,
              style: TextStyle(color: bodyTextColor),
            )
          ],
        ),
      ),
    );
  }
}
