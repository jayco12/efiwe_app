import 'package:efiwe_app/src/app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

import '../../../widgets/navigation_button.dart';
import '../../../widgets/sector_clippath.dart';
import 'vericication_forgot.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

final _phonenumberController = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
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
                          width: 50,
                        ),
                        const Text("Forgot Password",
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
                      EdgeInsets: EdgeInsets.fromLTRB(0, 3, 0, 120))),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(73, 0, 50, 20),
            child: Text(
                'Enter your registered phone number to retrieve your password',
                style: TextStyle(
                  fontFamily: 'lexend',
                  fontSize: 14,
                )),
          ),
          customtextfield(
            Controller: _phonenumberController,
            text: 'Phone Number',
            icon: const Icon(Icons.phone_outlined),
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
                            builder: (context) => const VerificationForgot()));
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
              EdgeInsets: EdgeInsets.fromLTRB(0, 220, 300, 0),
            ),
          )
        ],
      ),
    );
  }
}
