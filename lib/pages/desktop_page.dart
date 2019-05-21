import 'package:flutter_web/material.dart';

import '../widgets/myInkWell.dart';
import '../widgets/myPages.dart';
//import '../widgets/myDrawerElements.dart';

class DesktopPage extends StatelessWidget {
  final String title;
  DesktopPage({Key key, this.title}) : super(key: key);

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
            padding: EdgeInsets.only(
                left: screenWidth * 0.10,
                right: screenWidth * 0.10,
                top: screenHeight * 0.03),
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
                    // IconButton(
                    //   iconSize: 30,
                    //   padding: EdgeInsets.all(10.0),
                    //   icon: Icon(Icons.shopping_cart),
                    // ),
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
                          child: Container(
                            color: Color.fromRGBO(239, 239, 239, 1.0),
                            child: Image.asset(
                              'toolbar.jpeg',
                              colorBlendMode: BlendMode.lighten,
                              //height: screenHeight,
                              width: screenWidth,
                              //colorBlendMode: BlendMode.difference,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                    centerTitle: true,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Center(
                                  child: Image.asset(
                                    'main_page.jpeg',
                                    scale: 5.0,
                                    //fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Shit About me\nMore Shit\n\nCause\nI\nDont\nShut\nUp\nlolol',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: screenWidth,
                          height: screenHeight * 0.9,
                          color: Colors.orange[50],
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Center(
                                    child: Text(
                                  'Portfolio',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                )),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Art 5'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Art 5'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Art 5'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Art 5'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Art 5'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      child: Container(
                                        height: 150.0,
                                        width: 150.0,
                                        child: InkWell(
                                          highlightColor: Colors.orangeAccent,
                                          splashColor: Colors.orangeAccent[100],
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return SimpleDialog(
                                                  children: <Widget>[
                                                    Text('Pressed')
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text('More this way'),
                                              Icon(Icons.arrow_right)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: 1,
                  ),
                ),
                // SliverFillRemaining(
                //   child: MyPage(
                //     context,
                //     color: Colors.red[100],
                //     child: Text('Page 2'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
