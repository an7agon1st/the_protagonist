import 'package:flutter_web/material.dart';

import './pages/desktop_page.dart';
import './pages/mobile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Protagonist',
      theme: ThemeData(
        splashColor: Colors.orange[100],
        highlightColor: Colors.orange[100],
        backgroundColor: Colors.orange[100],
        //scaffoldBackgroundColor: Colors.blue,
        fontFamily: 'Dollie Demo',
        primaryColor: Color(0xFFFFE0b2),
        textTheme: TextTheme(
          title: TextStyle(
            fontFamily: 'Dollie Demo',
            color: Colors.grey,
          ),
        ),
      ),
      home: MyHomePage(title: 'The Protagonist'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenHeight;
    double screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return screenHeight>screenWidth? MobilePage():DesktopPage();
  }
}
