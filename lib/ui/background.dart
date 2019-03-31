import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String assetImage;
  const Background({
    Key key,
    @required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(assetImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
