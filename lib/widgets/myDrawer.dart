import 'package:flutter_web/material.dart';

import '../widgets/myDrawerElements.dart';

class MyDrawer extends StatelessWidget {
  final bool isHome;
  const MyDrawer({
    Key key,
    this.isHome=true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: AppBar(
              elevation: 0.5,
              automaticallyImplyLeading: false,
              title: Text(
                'The Protagonist',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          !isHome? MyDrawerElement(
            title: 'Home Page',
            context: context,
          ):Container(),
          MyDrawerElement(
            title: 'Portfolio',
            context: context,
          ),
          MyDrawerElement(
            title: 'Projects',
            context: context,
          ),
          MyDrawerElement(
            title: 'Shop',
            context: context,
          ),
        ],
      ),
    );
  }
}
