import 'package:flutter_web/material.dart';

class PortfolioCard extends Padding {
  final Widget myChild;
  bool pad;
  double size;
  final BuildContext context;
  PortfolioCard({this.myChild, this.context, this.size = 150, this.pad = true})
      : super(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              height: size,
              width: size,
              child: pad
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myChild,
                    )
                  : myChild,
            ),
          ),
        );
}
