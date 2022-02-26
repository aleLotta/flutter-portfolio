import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';
import 'package:my_cv_project/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Text(
                        "You can contact me for projects, working positions, or collaborations with the following links",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: primaryColor, fontSize: 18),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.center,
                      children: [
                        IconLinks(
                          iconPath: "assets/icons/github.svg",
                          urlString: "",
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconLinks(
                          iconPath: "assets/icons/gmail.svg",
                          urlString:
                              "https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox",
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconLinks(
                          iconPath: "assets/icons/twitter.svg",
                          urlString: "",
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        IconLinks(
                          iconPath: "assets/icons/linkedin.svg",
                          urlString: "",
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

class IconLinks extends StatelessWidget {
  const IconLinks({
    Key? key,
    required this.iconPath,
    required this.urlString,
  }) : super(key: key);

  final String iconPath;
  final String urlString;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        iconPath,
        height: 25,
        width: 25,
        color: bodyTextColor,
      ),
      onPressed: () {
        //launch(urlString);
      },
    );
  }
}
