import 'package:flutter_web/material.dart';

class PortfolioCard extends Padding {
  final Widget myChild;
  final bool pad;
  final double size;
  final BuildContext context;
  PortfolioCard({this.myChild, this.context, this.size = 150, this.pad = true})
      : super(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size,
            width: size,
            child: Card(
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
