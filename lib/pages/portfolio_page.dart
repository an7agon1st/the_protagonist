import 'package:flutter_web/material.dart';

import '../widgets/myDrawer.dart';
import '../widgets/myAppBar.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: screenWidth>screenHeight? EdgeInsets.only(
          left: screenWidth * 0.10,
          right: screenWidth * 0.10,
          top: screenHeight * 0.03):EdgeInsets.all(0.0),
      child: Scaffold(
        drawer: screenWidth<screenHeight? MyDrawer(isHome: false):null,
        appBar: MyAppBar(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          context: context,
        ),
        body: Column(
          children: <Widget>[
            Center(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Portfolio', style: TextStyle(fontSize: 32.0)),
            ))
          ],
        ),
      ),
    );
  }
}
