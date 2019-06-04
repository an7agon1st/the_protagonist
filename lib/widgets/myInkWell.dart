import 'package:flutter_web/material.dart';

import 'dart:html';

class MyInkWell extends InkWell {

 String link=null;
 final double screenWidth;

  final BuildContext context;
  final String title;
  MyInkWell({this.context, this.title, this.screenWidth,this.link})
      : super(
          highlightColor: Colors.orange[50],
          onTap: () {link!=null?window.location.assign(link):null;},
          splashColor: Colors.orange[50],
          child: Container(
            width: screenWidth>900?  100.0: null,
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(title, style: screenWidth<900? TextStyle(fontSize: 11):null,)),
          ),
        );
}
