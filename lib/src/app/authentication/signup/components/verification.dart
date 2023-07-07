import 'package:efiwe_app/src/app/authentication/signup/localwidget/successful.dart';
import 'package:flutter/material.dart';

import '../../../widgets/navigation_button.dart';
import '../../../widgets/sector_clippath.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    const efiwecolor = Color(0xFF112D8E);
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 52, 30, 40),
                child: Row(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: efiwecolor,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Text("Verification",
                            style: TextStyle(
                                color: efiwecolor,
                                fontFamily: 'lexend',
                                fontSize: 24,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.topRight,
                  child: sectorclip(
                      EdgeInsets: EdgeInsets.fromLTRB(25, 3, 0, 150))),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(73, 0, 50, 20),
            child: Text(
                'An OTP has been sent to 08012345678. Enter the code below to verify your phone number',
                style: TextStyle(
                  fontFamily: 'lexend',
                  fontSize: 14,
                )),
          ),
          Column(
            children: [
              Navbutton(
                  text: 'SUBMIT',
                  width: 278,
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Successful()));
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(76.0, 10, 67, 10),
                child: Center(
                  child: Row(
                    children: [
                      const Center(
                        child: Text(
                          'Did not get a code?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Center(
                            child: Text(
                              "Resend Otp",
                              style: TextStyle(color: Color(0xFFFF5C00)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(96.0, 10, 67, 10),
                child: Center(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Center(
                            child: Text(
                              "change phone number",
                              style: TextStyle(color: Color(0xFFFF5C00)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: sectorclipflip(
              EdgeInsets: EdgeInsets.fromLTRB(0, 280, 300, 0),
            ),
          )
        ],
      ),
    );
  }
}
