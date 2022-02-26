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
    return Container(
      color: darkColor,
      child: Column(
        children: [
          Divider(
            color: Colors.white,
            height: 0,
          ),
          if (!Responsive.isMobile(context))
            SizedBox(
              height: defaultPadding / 2,
            ),
          if (!Responsive.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationText(
                  label: "Home",
                  screen: HomeScreen(),
                ),
                NavigationText(
                  label: "Skills",
                  screen: SkillsScreen(),
                ),
                NavigationText(
                  label: "Works",
                  screen: WorksScreen(),
                ),
                NavigationText(
                  label: "Contacts",
                  screen: ContactsScreen(),
                ),
              ],
            ),
          if (!Responsive.isMobile(context)) SizedBox(height: defaultPadding),
          if (Responsive.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    NavigationText(
                      label: "Home",
                      screen: HomeScreen(),
                    ),
                    NavigationText(
                      label: "Skills",
                      screen: SkillsScreen(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    NavigationText(
                      label: "Works",
                      screen: WorksScreen(),
                    ),
                    NavigationText(
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

class NavigationText extends StatelessWidget {
  const NavigationText({
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
