import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_cv_project/responsive.dart';

import '../constants.dart';

class CodedName extends StatelessWidget {
  const CodedName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            !Responsive.isMobile(context)
                ? SizedBox(
                    width: 75,
                  )
                : SizedBox(
                    width: defaultPadding,
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
                      style: Responsive.isDesktop(context)
                          ? TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color)
                          : TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 10),
                    ),
                    onPressed: () {},
                  ),
                  if (!Responsive.isMobile(context))
                    const SizedBox(
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
