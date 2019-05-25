import 'package:flutter_web/material.dart';

//import '../widgets/myInkWell.dart';
import '../widgets/myPages.dart';
import '../widgets/myDrawerElements.dart';

class MobilePage extends StatelessWidget {
  final String title;
  MobilePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight;
    double screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        // drawer: Drawer(
        //   child: ListView(
        //     children: <Widget>[
        //       Padding(
        //         padding: const EdgeInsets.only(bottom: 8.0),
        //         child: AppBar(
        //           elevation: 0.5,
        //           automaticallyImplyLeading: false,
        //           title: Text(
        //             'The Protagonist',
        //             style: TextStyle(
        //               fontSize: 14.0,
        //             ),
        //           ),
        //         ),
        //       ),
        //       MyDrawerElement(
        //         title: 'Portfolio',
        //         context: context,
        //       ),
        //       MyDrawerElement(
        //         title: 'Projects',
        //         context: context,
        //       ),
        //       MyDrawerElement(
        //         title: 'Shop',
        //         context: context,
        //       ),
        //     ],
        //   ),
        // ),
        body: Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Rotate your phone or view from laptop. Mobile Page under development', textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ));
  }
}
