import 'package:flutter/material.dart';

import '../../constants.dart';

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
                color: alternativeColor,
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
