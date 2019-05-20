import 'package:flutter_web/material.dart';

import './widgets/myInkWell.dart';
import './widgets/myPages.dart';
import './widgets/myDrawerElements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Protagonist',
      theme: ThemeData(
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

    return Scaffold(
      drawer: screenHeight > screenWidth
          ? Drawer(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: AppBar(
                      elevation: 0.5,
                      automaticallyImplyLeading: false,
                      title: Text(
                        'The Protagonist',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  MyDrawerElement(
                    title: 'Portfolio',
                    context: context,
                  ),
                  MyDrawerElement(
                    title: 'Projects',
                    context: context,
                  ),
                  MyDrawerElement(
                    title: 'Shop',
                    context: context,
                  ),
                ],
              ),
            )
          : null,
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
            padding: EdgeInsets.only(
                left: screenWidth * 0.10,
                right: screenWidth * 0.10,
                top: screenHeight * 0.03),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  actions: screenWidth > screenHeight
                      ? <Widget>[
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
                          // IconButton(
                          //   iconSize: 30,
                          //   padding: EdgeInsets.all(10.0),
                          //   icon: Icon(Icons.shopping_cart),
                          // ),
                        ]
                      : null,
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
                            'toolbar.jpeg',
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
