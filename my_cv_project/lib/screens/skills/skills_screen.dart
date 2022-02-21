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
            ),
          ),
          NavigationBanner(),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularSkillIndicator(
              label: "Dart",
              value: 0.5,
            ),
            CircularSkillIndicator(label: "Python", value: 0.6),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularSkillIndicator(label: "SQL", value: 0.6),
            CircularSkillIndicator(label: "Java", value: 0.7),
          ],
        ),
      ],
    );
  }
}

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
    );
  }
}

class CircularSkillIndicator extends StatelessWidget {
  const CircularSkillIndicator({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: primaryColor,
              ),
              Center(
                child: Text(
                  (value * 100).toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1,
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
            Row(
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                //Icon(),
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
