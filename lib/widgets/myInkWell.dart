import 'package:flutter_web/material.dart';

class MyInkWell extends InkWell {

 final double screenWidth;

  final BuildContext context;
  final String title;
  MyInkWell({this.context, this.title, this.screenWidth})
      : super(
          highlightColor: Colors.orange[50],
          onTap: () {},
          splashColor: Colors.orange[50],
          child: Container(
            width: screenWidth>900?  100.0: null,
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(title, style: screenWidth<900? TextStyle(fontSize: 11):null,)),
          ),
        );
}
