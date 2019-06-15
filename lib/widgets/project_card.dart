import 'package:flutter_web/material.dart';

import '../pages/portfolio_page.dart';

class MyProjectCard extends StatelessWidget {
  MyProjectCard(
      {this.screenHeight, this.screenWidth, this.title, this.myChild});

  final Widget myChild;
  final String title;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: screenHeight * 0.5,
        //  width: screenHeight * 0.5,
        child: Card(
          color: Colors.grey,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (context, w, s) {
                  return PortfolioPage();
                }),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(title),
                      //myChild,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
