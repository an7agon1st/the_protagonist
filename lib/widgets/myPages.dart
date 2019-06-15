import 'package:flutter_web/material.dart';

class MyPage extends Container {
  //final double width;
  final BuildContext context;
  // final double height;
  final Widget child;
  final Color color;
  MyPage(this.context, {this.child, this.color})
      : super(
          color: color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.2,
            horizontal: MediaQuery.of(context).size.height * 0.2,
          ),
          child: child,
        );
}
