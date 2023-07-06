import 'package:efiwe_app/src/app/authentication/login/login.dart';
import 'package:efiwe_app/src/app/authentication/signup/components/verification.dart';
import 'package:flutter/material.dart';

import '../../widgets/customtextfield.dart';
import '../../widgets/navigation_button.dart';
import '../../widgets/sector_clippath.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final _phoneController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmpasswordController = TextEditingController();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    const efiwecolor = Color(0xFF112D8E);
    return Scaffold(
      body: Column(children: [
        const Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(93, 32, 30, 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_add_alt,
                      color: efiwecolor,
                    ),
                    Text("| Sign Up",
                        style: TextStyle(
                            color: efiwecolor,
                            fontFamily: 'lexend',
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: sectorclip(
                      EdgeInsets: EdgeInsets.fromLTRB(70, 3, 0, 100))),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(73, 0, 50, 20),
            child:
                Text('Kindly fill in the following fields to Sign Up on Efiwe',
                    style: TextStyle(
                      fontFamily: 'lexend',
                      fontSize: 14,
                    )),
          ),
        ]),
        const SizedBox(
          height: 65,
        ),
        customtextfield(
          text: 'Phone Number',
          Controller: _phoneController,
          icon: const Icon(
            Icons.phone_outlined,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        customtextfield(
          text: 'Password',
          Controller: _passwordController,
          icon: const Icon(
            Icons.visibility_outlined,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        customtextfield(
          text: 'Confirm Password',
          Controller: _confirmpasswordController,
          icon: const Icon(
            Icons.visibility_outlined,
            color: Colors.grey,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(26.0, 10, 67, 10),
          child: Text(
              'By Signing up on Efiwe, you agree to the terms and condition of this platform',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 14,
              )),
        ),
        Column(
          children: [
            Navbutton(
                text: 'SIGN UP',
                width: 278,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verification()));
                }),
            Padding(
              padding: const EdgeInsets.fromLTRB(96.0, 10, 67, 10),
              child: Center(
                child: Row(
                  children: [
                    const Center(
                      child: Text(
                        'Already have account?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Center(
                          child: Text(
                            "Login",
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
            EdgeInsets: EdgeInsets.fromLTRB(0, 25, 300, 0),
          ),
        )
      ]),
    );
  }
}
