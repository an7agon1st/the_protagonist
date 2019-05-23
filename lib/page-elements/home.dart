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
    );
  }
}