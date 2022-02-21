import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';

import '../../constants.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    /*Container(
                      width: 50,
                      height: 50,
                      child: AnimatedTextKit(animatedTexts: [
                        FlickerAnimatedText(":)",
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                      ]),
                    )*/
                  ],
                ),
              ],
            ),
          ),
          NavigationBanner(),
        ],
      ),
    );
  }
}
