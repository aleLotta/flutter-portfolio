import 'package:flutter/material.dart';

import '../constants.dart';

class CodedName extends StatelessWidget {
  const CodedName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            SizedBox(
              width: 75,
            ),
            RichText(
              text: TextSpan(
                  text: "Alessandro",
                  style: Theme.of(context).textTheme.subtitle1,
                  children: [
                    TextSpan(
                        text: ".Lotta", style: TextStyle(color: primaryColor)),
                  ]),
            ),
            SizedBox(
              width: defaultPadding / 2,
            ),
          ]),
        ],
      ),
    );
  }
}
