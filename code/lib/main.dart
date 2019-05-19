import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Protagonist',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          title: TextStyle(
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

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.03, horizontal: screenWidth * 0.06),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: <Widget>[
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    width: 100.0,
                    child: Text('Protfolio'),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 100.0,
                    padding: EdgeInsets.all(20.0),
                    child: Text('Projects'),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 100.0,
                    padding: EdgeInsets.all(20.0),
                    child: Text('Shop'),
                  ),
                ),
              ],
              floating: false,
              pinned: true,
              snap: false,
              elevation: 0.5,
              expandedHeight: screenHeight,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'The Protagonist',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                background: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      //height: screenHeight,
                      child: Image.asset(
                        'toolbar.png',
                        //height: screenHeight,
                        width: screenWidth,
                        //colorBlendMode: BlendMode.difference,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
                centerTitle: true,
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.orange[100],
                    width: screenWidth,
                    height: screenHeight,
                    padding: EdgeInsets.symmetric(
                        vertical: screenWidth * 0.2,
                        horizontal: screenHeight * 0.2),
                    child: Text('Page 1'),
                  ),
                  Container(
                    color: Colors.red[100],
                    width: screenWidth,
                    height: screenHeight,
                    padding: EdgeInsets.symmetric(
                        vertical: screenWidth * 0.2,
                        horizontal: screenHeight * 0.2),
                    child: Text('Page 2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
