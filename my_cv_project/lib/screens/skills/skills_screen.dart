import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';

import '../../constants.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: CodedName()),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
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
                                description:
                                    "I'm a self taught Web/Mobile developer using Dart language, still trying to learn new things to make my works flawless.",
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              SkillBanner(
                                  title: "Web Developer",
                                  description:
                                      "I have some knowledge in Web Applications, with HTML and CSS languages."),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              SkillBanner(
                                  title: "Mobile Developer",
                                  description:
                                      "I can build some basic/medium level apps with a minimal and elegant design."),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              SkillBanner(
                                  title: "Database Programmer",
                                  description:
                                      "I can create basic database managment systems (DBMS) using PostgreSQL and Java."),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: VerticalDivider(
                    color: primaryColor,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Dart"),
                            Text("Python"),
                          ],
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Center(
                          child: Text(
                            "Skills",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("PostgreSQL"),
                            Text("Java"),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            child: NavigationBanner(),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class SkillBanner extends StatelessWidget {
  const SkillBanner({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

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
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
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
