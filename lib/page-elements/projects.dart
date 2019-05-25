import 'package:flutter_web/material.dart';

import '../widgets/project_card.dart';

class MyProject extends StatelessWidget {
  MyProject({Key key, @required this.screenHeight, @required this.screenWidth})
      : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          color: Colors.yellow[200],
          height: screenHeight * 0.9,
          width: screenWidth,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  bottom: 21.0,
                ),
                child: Text(
                  'Projects',
                  style: TextStyle(fontSize: 36.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: MyProjectCard(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        title: 'Proto',
                      ),
                    ),
                    Expanded(
                      child: MyProjectCard(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        title: 'Projects',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
