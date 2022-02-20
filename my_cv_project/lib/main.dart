import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';
import 'package:my_cv_project/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_cv_project/screens/home/home_screen.dart';
import 'package:my_cv_project/screens/skills/skills_screen.dart';
import 'package:my_cv_project/screens/works/work_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Portfolio",
        theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1: TextStyle(color: bodyTextColor),
                bodyText2: TextStyle(color: bodyTextColor),
              ),
        ),
        home: WorksScreen() //SkillsScreen(), //HomeScreen(),
        );
  }
}
