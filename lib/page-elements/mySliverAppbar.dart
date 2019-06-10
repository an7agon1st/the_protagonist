import 'package:flutter_web/material.dart';
import '../widgets/myInkWell.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.grey,
      actions: <Widget>[
        MyInkWell(
          screenWidth: screenWidth,
          context: context,
          title: 'Portfolio',
        ),
        MyInkWell(
          screenWidth: screenWidth,
          context: context,
          title: 'Projects',
        ),
        MyInkWell(
          screenWidth: screenWidth,
          context: context,
          title: 'Products',
          link: 'https://otheprotagonisto.bigcartel.com',
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
      expandedHeight: screenHeight * 0.65,
      flexibleSpace: FlexibleSpaceBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              MyInkWell(
                screenWidth: screenWidth,
                context: context,
                title: 'Portfolio',
              ),
              MyInkWell(
                screenWidth: screenWidth,
                context: context,
                title: 'Projects',
              ),
              MyInkWell(
                screenWidth: screenWidth,
                context: context,
                title: 'Products',
                link: 'https://otheprotagonisto.bigcartel.com',
              ),
            ],
          ),
        ),
        background: Container(
          // color: Color.fromRGBO(251, 138, 26, 1.0),
          color: Color.fromRGBO(0, 0, 0, 1),
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  //height: screenHeight,
                  child: Container(
                    color: Color.fromRGBO(239, 239, 239, 1.0),
                    child: Image.asset(
                      'toolbar_trial.jpg',
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
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
