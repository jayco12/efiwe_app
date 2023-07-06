import 'dart:async';

import 'package:flutter/material.dart';

import '../onboarding/onboarding.dart';
import '../widgets/svgimage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Onboarding())));

    return Scaffold(
        body: Center(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 200,
                      width: 200,
                      child: Stack(
                        children: [
                          SvgImage(
                            imageLocation: "assets/efiwe.svg",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "Version:1.0.0",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
