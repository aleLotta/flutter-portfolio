import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';
import 'package:my_cv_project/screens/home/components/info_section.dart';

import '../../constants.dart';
import '../../responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          elevation: 100,
          backgroundColor: alternativeColor,
          child: NavigationBanner(location: "Home"),
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
          MyInfo(),
          if (Responsive.isDesktop(context)) NavigationBanner(location: "Home")
        ],
      ),
    );
  }
}
