import 'package:flutter/material.dart';
import 'package:my_cv_project/constants.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: defaultPadding * 3),
          child: Text(
            "About",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
          child: Text(
            "I am a 22 years old Computer Engineering student from Padua," +
                " Italy.\nI have graduated with a Bachelor's degree" +
                " in Information Engineering, and now I'm completing my Master" +
                " Degree at the University of Padua",
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          "I love to work in group projects and I'm really interested in learning up to date new skills",
        )
      ],
    );
  }
}
