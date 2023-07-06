import 'package:flutter/material.dart';

class sectorclip extends StatelessWidget {
  const sectorclip({
    super.key,
    this.EdgeInsets,
  });
  final EdgeInsets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFF9900),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(150),
            topLeft: Radius.circular(0),
          ),
          border: Border.all(
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}

class sectorclipflip extends StatelessWidget {
  const sectorclipflip({
    super.key,
    this.EdgeInsets,
  });
  final EdgeInsets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFF9900),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            topRight: Radius.circular(150),
          ),
          border: Border.all(
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
