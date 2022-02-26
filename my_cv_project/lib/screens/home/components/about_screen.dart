import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cv_project/constants.dart';
import 'package:my_cv_project/responsive.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: !Responsive.isMobile(context)
              ? const EdgeInsets.only(top: defaultPadding * 3)
              : const EdgeInsets.only(top: defaultPadding),
          child: Text(
            "About",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: alternativeColor, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
          child: Divider(),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: Text(
                  "I am a 22 years old Computer Engineering student from Padua, Italy. I have graduated with a Bachelor's degree in Information Engineering, and now I'm completing my Master Degree at the University of Padua",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "I love to work in group projects and I'm really interested in learning up to date new skills",
                      textAlign: TextAlign.center,
                      speed: Duration(milliseconds: 75),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
