import 'dart:ui';
import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  final String assetImage;
  final double blurX;
  final double blurY;
  final Color backDropColor;

  const BlurBackground({
    Key key,
    @required this.assetImage,
    @required this.blurX,
    @required this.blurY,
    @required this.backDropColor,
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
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Container(
          decoration: BoxDecoration(color: backDropColor),
        ),
      ),
    );
  }
}
