import 'package:flutter_web/material.dart';

class MyAboutMe extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const MyAboutMe({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: screenHeight * 0.9,
              width: screenWidth,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: Image.asset(
                        'main_page.jpeg',
                        scale: 7.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Shit About me\nMore Shit\nCause I Dont Shut Up \n follow my instagram tho \n www.instagram.com/o_the_protagonist_o',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        // OutlineButton(
                        //   highlightedBorderColor: Colors.orange,
                        //     onPressed: () {
                        //       //launch('instagram.com')
                        //     },
                        //     child: Image.asset(
                        //       'instagram.png',
                        //       scale: 12,
                        //     )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}
