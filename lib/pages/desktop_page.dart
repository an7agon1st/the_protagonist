import 'package:flutter_web/material.dart';

import '../page-elements/home.dart';
import '../page-elements/portfolio.dart';
import '../page-elements/about_me.dart';
import '../page-elements/projects.dart';
//import '../widgets/myDrawerElements.dart';

class DesktopPage extends StatelessWidget {
  final String title;
  final List<String> portfolioImages = [
    'main_page.jpeg',
    'toolbar.jpeg',
    'background_img.jpg'
  ];
  DesktopPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(portfolioImages.length);
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
            child: Scrollbar(
              child: CustomScrollView(
                primary: true,
                slivers: <Widget>[
                  MySliverAppBar(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  MyAboutMe(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  MyPortfolio(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    portfolioImages: portfolioImages,
                  ),
                  MyProject(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  SliverToBoxAdapter(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: InkWell(
                              child: Text('Contact Me'),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: InkWell(
                              onTap: () {},
                              child: Text('Product'),
                            ),
                          ),
                        ],
                      ),
                      height: screenHeight * 0.1,
                      color: Color.fromRGBO(210, 210, 210, 1.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
