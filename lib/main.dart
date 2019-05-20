import 'package:flutter_web/material.dart';

import './widgets/myInkWell.dart';
import './widgets/myPages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Protagonist',
      theme: ThemeData(
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

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background_img.jpg',
            width: screenWidth,
            height: screenHeight,
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.03, horizontal: screenWidth * 0.06),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  actions: <Widget>[
                    MyInkWell(
                      context: context,
                      title: 'Portfolio',
                    ),
                    MyInkWell(
                      context: context,
                      title: 'Projects',
                    ),
                    MyInkWell(
                      context: context,
                      title: 'Shop',
                    ),
                    IconButton(
                      iconSize: 30,
                      padding: EdgeInsets.all(10.0),
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ],
                  floating: false,
                  pinned: true,
                  snap: false,
                  elevation: 0.5,
                  expandedHeight: screenHeight,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'The Protagonist',
                        style: TextStyle(
                          //textBaseline: TextBaseline.alphabetic,
                          fontFamily: 'Dollie Demo',
                          fontSize: 14,
                          //color: Colors.white,
                        ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyPage(
                      context,
                      color: Colors.orange[100],
                      child: Text('Page 1'),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: MyPage(
                    context,
                    color: Colors.red[100],
                    child: Text('Page 2'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
