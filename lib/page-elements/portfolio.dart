import 'package:flutter_web/material.dart';

import '../widgets/portfolio_card.dart';
import '../widgets/myViewMore.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
    @required this.portfolioImages,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final List<String> portfolioImages;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.9,
              color: Colors.orange[50],
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                  Flexible(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        if (index != portfolioImages.length) {
                          return PortfolioCard(
                            size: screenHeight * 0.3,
                            context: context,
                            myChild: Image.asset(
                              portfolioImages[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        } else {
                          return MyViewMore(
                            screenHeight: screenHeight,
                            title: 'More this way',
                          );
                        }
                      },
                      itemCount: portfolioImages.length + 1,
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        highlightColor: Colors.orange[100],
                        splashColor: Colors.orange[100],
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text('View More'),
                              Icon(
                                Icons.arrow_right,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  //Fills remaining space to prevent stretch
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.green,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
