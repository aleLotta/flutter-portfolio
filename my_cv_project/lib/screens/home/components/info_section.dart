import 'package:flutter/material.dart';
import 'package:my_cv_project/screens/home/components/about_screen.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
    );
  }
}
