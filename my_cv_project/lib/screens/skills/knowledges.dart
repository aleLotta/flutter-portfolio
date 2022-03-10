import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cv_project/responsive.dart';

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
          padding: Responsive.isDesktop(context)
              ? const EdgeInsets.all(defaultPadding)
              : const EdgeInsets.all(0.5),
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
          child: Responsive.isDesktop(context)
              ? SingleChildScrollView(
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
                ))
              : Scrollbar(
                  showTrackOnHover: true,
                  thickness: 5,
                  radius: null,
                  //interactive: true,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding),
                          child: SkillBanner(
                            title: "Flutter Programmer",
                            icon: "assets/icons/flutter_icon.svg",
                            description:
                                "I'm a self taught Web/Mobile developer using Dart language, still trying to learn new things to make my works flawless.",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: SkillBanner(
                              title: "Web Developer",
                              icon: "assets/icons/html5.svg",
                              description:
                                  "I have some knowledge in Web Applications, with HTML and CSS languages."),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: SkillBanner(
                              title: "Mobile Developer",
                              icon: "assets/icons/smartphone_tablet.svg",
                              description:
                                  "I can build some basic/medium level apps with a minimal and elegant design."),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: SkillBanner(
                              title: "Database Programmer",
                              icon: "assets/icons/sql_db.svg",
                              description:
                                  "I can create basic database managment systems (DBMS) using PostgreSQL and Java."),
                        ),
                      ],
                    ),
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
    return FittedBox(
      child: Container(
        color: secondaryColor,
        width: Responsive.isDesktop(context) ? 420 : 315,
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
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  if (Responsive.isDesktop(context))
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  if (!Responsive.isDesktop(context))
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                ],
              ),
              SizedBox(height: defaultPadding / 5),
              if (Responsive.isDesktop(context))
                Text(
                  description,
                  style: TextStyle(color: bodyTextColor),
                ),
              SizedBox(
                height: defaultPadding,
              ),
              if (!Responsive.isDesktop(context))
                Text(
                  description,
                  style: TextStyle(
                    color: bodyTextColor,
                    fontSize: 16,
                    height: 1.75,
                  ),
                ),
              SizedBox(
                height: defaultPadding,
              )
            ],
          ),
        ),
      ),
    );
  }
}
