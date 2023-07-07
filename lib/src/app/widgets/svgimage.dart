import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({Key? key, required this.imageLocation}) : super(key: key);
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Stack(
            children: [Positioned(child: SvgPicture.asset(imageLocation))]),
      )
    ]);
  }
}
