//MALE AND FEMALE ICONS WIDGIT
import 'package:flutter/widgets.dart';

import 'Constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  IconContent({@required this.icon, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: ktextStyle(),
        )
      ],
    );
  }
}
