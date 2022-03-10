import 'package:flutter/material.dart';
import 'package:my_cv_project/responsive.dart';
import 'package:my_cv_project/screens/home/components/about_screen.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: !Responsive.isMobile(context)
          ? Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        child: CircleAvatar(
                      radius: 75,
                      backgroundColor: primaryColor,
                    )),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          "Hi, my name is ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: primaryColor),
                        ),
                        Text(
                          "Alessandro",
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          "Freelance Developer / 22 years old / Italian",
                          style: TextStyle(
                              fontSize: 12,
                              color: primaryColor,
                              wordSpacing: 3,
                              letterSpacing: 2),
                        ),
                        Column(
                          children: [
                            About(),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Expanded(
              flex: 6,
              child: Column(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Hi, my name is ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: primaryColor),
                  ),
                  Text(
                    "Alessandro",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "Freelance Developer / 22 years old / Italian",
                    style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                        wordSpacing: 3,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.amberAccent,
                  )),
                  Column(
                    children: [
                      About(),
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
    );
  }
}
