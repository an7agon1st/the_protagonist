import 'package:flutter_web/material.dart';

class MyDrawerElement extends InkWell {
  String title;
  BuildContext context;
  MyDrawerElement({this.context, this.title})
      : super(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.orange[50],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
        );
}
