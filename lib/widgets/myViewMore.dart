import 'package:flutter_web/material.dart';
import './portfolio_card.dart';


class MyViewMore extends StatelessWidget {
  const MyViewMore({
    Key key,
    @required this.screenHeight, this.title,
  }) : super(key: key);

  final double screenHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      size: screenHeight * 0.25,
      pad: false,
      myChild: InkWell(
        highlightColor: Colors.orangeAccent,
        splashColor: Colors.orangeAccent[100],
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(screenHeight * 0.1),
                    child: Image.asset(
                      'background_img.jpg',
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('More this way'),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}