import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';

import '../../constants.dart';
import '../../responsive.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          elevation: 100,
          backgroundColor: alternativeColor,
          child: NavigationBanner(location: "Projects"),
        ),
      ),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: CodedName(),
              backgroundColor: darkColor,
            ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          if (Responsive.isDesktop(context)) CodedName(),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "?",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 150,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Still working on my first projects",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: primaryColor),
                    ),
                    Container(
                      width: 30,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          ),
                          TyperAnimatedText(
                            ".",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          ),
                          TyperAnimatedText(
                            "..",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          ),
                          TyperAnimatedText(
                            "...",
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          )
                        ],
                        totalRepeatCount: 4,
                        pause: Duration(milliseconds: 500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you have any, please contact me :)",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (Responsive.isDesktop(context))
            NavigationBanner(location: "Projects"),
        ],
      ),
    );
  }
}
