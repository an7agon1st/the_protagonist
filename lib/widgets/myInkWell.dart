import 'package:flutter_web/material.dart';

class MyInkWell extends InkWell {
  final BuildContext context;
  final String title;
  MyInkWell({this.context, this.title})
      : super(
          highlightColor: Colors.orange[50],
          onTap: () {},
          splashColor: Colors.orange[50],
          child: Container(
            width: 100.0,
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(title)),
          ),
        );
}
