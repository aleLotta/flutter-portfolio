import 'package:flutter/material.dart';

class NavigationBanner extends StatelessWidget {
  const NavigationBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavigationIcons(
            label: "Home",
          ),
          NavigationIcons(
            label: "Skills",
          ),
          NavigationIcons(
            label: "Works",
          ),
          NavigationIcons(
            label: "Contacts",
          ),
        ],
      ),
    );
  }
}

class NavigationIcons extends StatelessWidget {
  const NavigationIcons({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        label,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
