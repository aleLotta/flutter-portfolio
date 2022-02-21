import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: FittedBox(
              child: Row(
                children: [
                  TextButton(
                    child: Text(
                      "DOWNLOAD CV",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: defaultPadding / 2,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/download.svg"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
