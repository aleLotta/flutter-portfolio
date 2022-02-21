import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';

import '../../constants.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "You can contact me for Projects, working positions, or collaborations with the following links",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: primaryColor),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "icons/github.svg",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        SvgPicture.asset(
                          "icons/gmail.svg",
                          height: 25,
                          width: 25,
                          color: bodyTextColor,
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        SvgPicture.asset(
                          "icons/twitter.svg",
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        SvgPicture.asset(
                          "icons/linkedin.svg",
                          height: 25,
                          width: 25,
                        ),
                      ],
                    )
                  ])),
          NavigationBanner(),
        ],
      ),
    );
  }
}
