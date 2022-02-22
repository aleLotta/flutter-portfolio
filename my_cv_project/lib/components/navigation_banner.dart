import 'package:flutter/material.dart';
import 'package:my_cv_project/constants.dart';
import 'package:my_cv_project/responsive.dart';
import 'package:my_cv_project/screens/contacts/contact_screen.dart';
import 'package:my_cv_project/screens/home/home_screen.dart';
import 'package:my_cv_project/screens/skills/skills_screen.dart';
import 'package:my_cv_project/screens/works/work_screen.dart';

class NavigationBanner extends StatelessWidget {
  const NavigationBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          SizedBox(
            height: defaultPadding * 2,
          ),
          Divider(
            color: Colors.white,
          ),
          if (!Responsive.isMobile(context))
            SizedBox(
              height: defaultPadding,
            ),
          if (!Responsive.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationIcons(
                  label: "Home",
                  screen: HomeScreen(),
                ),
                NavigationIcons(
                  label: "Skills",
                  screen: SkillsScreen(),
                ),
                NavigationIcons(
                  label: "Works",
                  screen: WorksScreen(),
                ),
                NavigationIcons(
                  label: "Contacts",
                  screen: ContactsScreen(),
                ),
              ],
            ),
          if (Responsive.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    NavigationIcons(
                      label: "Home",
                      screen: HomeScreen(),
                    ),
                    NavigationIcons(
                      label: "Skills",
                      screen: SkillsScreen(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    NavigationIcons(
                      label: "Works",
                      screen: WorksScreen(),
                    ),
                    NavigationIcons(
                      label: "Contacts",
                      screen: ContactsScreen(),
                    ),
                  ],
                ),
              ],
            )
        ],
      ),
    );
  }
}

class NavigationIcons extends StatelessWidget {
  const NavigationIcons({
    Key? key,
    required this.label,
    required this.screen,
  }) : super(key: key);

  final String label;
  final Widget screen;

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
          child: Text(label, style: Theme.of(context).textTheme.subtitle1)),
    );
  }
}
