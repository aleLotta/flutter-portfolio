import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/constants.dart';
import 'package:my_cv_project/responsive.dart';
import 'package:my_cv_project/screens/contacts/contact_screen.dart';
import 'package:my_cv_project/screens/home/home_screen.dart';
import 'package:my_cv_project/screens/projects/projects_screen.dart';
import 'package:my_cv_project/screens/skills/skills_screen.dart';

class NavigationBanner extends StatelessWidget {
  const NavigationBanner({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkColor,
      child: Column(
        children: [
          Divider(
            color: Colors.white,
            height: 0,
          ),
          if (Responsive.isDesktop(context))
            SizedBox(
              height: defaultPadding / 2,
            ),
          if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationText(
                    label: "Home",
                    screen: HomeScreen(),
                    flag: location == "Home"),
                NavigationText(
                    label: "Skills",
                    screen: SkillsScreen(),
                    flag: location == "Skills"),
                NavigationText(
                    label: "Projects",
                    screen: ProjectsScreen(),
                    flag: location == "Projects"),
                NavigationText(
                    label: "Contacts",
                    screen: ContactsScreen(),
                    flag: location == "Contacts"),
              ],
            ),
          if (Responsive.isDesktop(context)) SizedBox(height: defaultPadding),
          if (!Responsive.isDesktop(context))
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        NavigationText(
                          label: "Home",
                          screen: HomeScreen(),
                          flag: location == "Home",
                        ),
                        NavigationText(
                            label: "Skills",
                            screen: SkillsScreen(),
                            flag: location == "Skills"),
                      ],
                    ),
                    Column(
                      children: [
                        NavigationText(
                            label: "Projects",
                            screen: ProjectsScreen(),
                            flag: location == "Projects"),
                        NavigationText(
                            label: "Contacts",
                            screen: ContactsScreen(),
                            flag: location == "Contacts"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                DownloadCV(),
              ],
            )
        ],
      ),
    );
  }
}

class NavigationText extends StatelessWidget {
  const NavigationText({
    Key? key,
    required this.label,
    required this.screen,
    required this.flag,
  }) : super(key: key);

  final String label;
  final Widget screen;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 50)
          : const EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => screen));
          },
          child: Text(label,
              style: flag == true
                  ? Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: primaryColor)
                  : Theme.of(context).textTheme.subtitle1)),
    );
  }
}
