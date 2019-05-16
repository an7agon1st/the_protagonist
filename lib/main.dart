import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Protagonist',
      theme: ThemeData(
        primarySwatch: Colors.grey,
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
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
                  Container(
                      //height: screenHeight,
                      child: Image.asset(
                        'toolbar_img_bw.jpg',
                        //height: screenHeight,
                        width: screenWidth,
                        //colorBlendMode: BlendMode.difference,
                        fit: BoxFit.fitWidth,
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
                Center(
                  child: Text('Sample webpage'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
