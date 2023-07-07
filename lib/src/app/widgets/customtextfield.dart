import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({
    super.key,
    required TextEditingController Controller,
    required this.text,
    this.icon,
  }) : _emailController = Controller;

  final TextEditingController _emailController;
  final String text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: _emailController,
        style: const TextStyle(
            height: 2, color: Colors.black, fontFamily: 'lexend', fontSize: 15),
        decoration: InputDecoration(
          iconColor: Colors.black,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          hintText: text,
          hintStyle: const TextStyle(fontSize: 14),
          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
          suffixIcon: IconButton(
            icon: icon,
            onPressed: () {},
          ),
        ),
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
