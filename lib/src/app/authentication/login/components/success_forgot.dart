import 'dart:async';

import 'package:flutter/material.dart';

class SuccessForgot extends StatefulWidget {
  const SuccessForgot({super.key});

  @override
  State<SuccessForgot> createState() => _SuccessForgotState();
}

class _SuccessForgotState extends State<SuccessForgot> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => Navigator.of(context).pop());
    return Scaffold(
        body: Center(
      child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/success.png",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  "Verification successful",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )),
    ));
  }
}
