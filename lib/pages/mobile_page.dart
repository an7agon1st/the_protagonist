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
      drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
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
            ),
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
                left: screenWidth * 0.01,
                right: screenWidth * 0.01,
                top: screenHeight * 0.02),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
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
                            fit: BoxFit.fill,
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
