import 'package:flutter/material.dart';
import 'package:my_cv_project/components/coded_name.dart';
import 'package:my_cv_project/components/navigation_banner.dart';
import 'package:my_cv_project/screens/home/components/info_section.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [CodedName(), MyInfo(), NavigationBanner()],
      ),
    );
  }
}
