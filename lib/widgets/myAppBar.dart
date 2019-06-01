import 'package:flutter_web/material.dart';

import '../widgets/myInkWell.dart';


class MyAppBar extends AppBar {
  MyAppBar({
    Key key,
    @required this.screenWidth,
    @required this.context,
  }) : super(
          elevation: 0.5,
          actions: <Widget>[
            MyInkWell(
              screenWidth: screenWidth,
              context: context,
              title: 'Portfolio',
            ),
            MyInkWell(
              screenWidth: screenWidth,
              context: context,
              title: 'Projects',
            ),
            MyInkWell(
              screenWidth: screenWidth,
              context: context,
              title: 'Shop',
            ),
          ],
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              'The Protagonist',
              style: TextStyle(
                //textBaseline: TextBaseline.alphabetic,
                fontFamily: 'Dollie Demo',
                fontSize: 14,
                //color: Colors.white,
              ),
            ),
          ),
        );

  final double screenWidth;
  final BuildContext context;
}
