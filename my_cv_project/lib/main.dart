import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_cv_project/screens/home/home_screen.dart';

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
      home: SkillsScreen(), //HomeScreen(),
    );
  }
}

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: CodedName()),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Text(
                          "I'm a ...",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      SkillBanner(),
                      Text("Web Developer"),
                      Text("Mobile Developer"),
                      Text("Database Programmer"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: VerticalDivider(
                    color: primaryColor,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text("Skills"),
                        Text("Dart"),
                        Text("Python"),
                        Text("PostgreSQL"),
                        Text("Java"),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillBanner extends StatelessWidget {
  const SkillBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: 420,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Flutter Programmer",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: defaultPadding / 5),
            Text(
              "I'm a self taught Web/Mobile developer using Dart language, still trying to learn new things to make my works flawless",
              style: TextStyle(color: bodyTextColor),
            )
          ],
        ),
      ),
    );
  }
}
