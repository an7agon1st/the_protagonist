import 'package:flutter_web/material.dart';

//import '../widgets/myInkWell.dart';
import '../widgets/myPages.dart';
import '../widgets/myDrawerElements.dart';
import '../page-elements/home.dart';
import '../page-elements/portfolio.dart';
import '../page-elements/about_me.dart';
import '../page-elements/projects.dart';

class MobilePage extends StatelessWidget {
  final String title;
  MobilePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight;
    double screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    final List<String> portfolioImages = [
      'main_page.jpeg',
      'toolbar.jpeg',
      'background_img.jpg'
    ];

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
        body: Scrollbar(
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
                        fontSize: 12,
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
              MyAboutMe(screenHeight: screenHeight, screenWidth: screenWidth),
              MyPortfolio(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                portfolioImages: portfolioImages,
              ),
              MyProject(screenHeight: screenHeight, screenWidth: screenWidth),
            ],
          ),
        )
        //     body: Container(
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Rotate your phone or view from laptop. Mobile Page under development', textAlign: TextAlign.center,
        //         style: TextStyle(fontSize: 24),
        //       ),
        //     ),
        //   ),
        // )
        );
  }
}
