import 'package:flutter/material.dart';

class Navbutton extends StatelessWidget {
  const Navbutton(
      {super.key,
      required this.text,
      required this.width,
      required this.ontap});
  final String text;
  final int width;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.toDouble(),
      height: 50,
      child: ElevatedButton(
        onPressed: ontap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF112D8E)),
            shadowColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(2.0),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.elliptical(25.0, 25.0),
              ),
            ))),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(text: text),
          const WidgetSpan(
            child: Icon(Icons.arrow_forward_outlined, size: 14),
          ),
        ])),
      ),
    );
  }
}
