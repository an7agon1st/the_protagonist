import 'package:flutter_web/material.dart';

class MyAboutMe extends StatelessWidget {
  const MyAboutMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
    );
  }
}
