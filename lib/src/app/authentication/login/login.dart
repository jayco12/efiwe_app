import 'package:efiwe_app/src/app/authentication/login/components/forgotpassword.dart';
import 'package:efiwe_app/src/app/authentication/signup/signup.dart';
import 'package:efiwe_app/src/app/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/customtextfield.dart';
import '../../widgets/svgimage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 333,
            decoration: BoxDecoration(
              color: const Color(0xFF112D8E),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              border: Border.all(
                style: BorderStyle.solid,
              ),
            ),
            child: const Stack(
              children: [
                SvgImage(imageLocation: "assets/efiwe.svg"),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 85, 10),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'lexend',
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Text(
                'Kindly fill in your details below to Login',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'lexend',
                  fontSize: 16,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Positioned(
                child: Center(
                    child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 14, left: 14, bottom: 0),
                    child: customtextfield(
                      Controller: _emailController,
                      text: 'Phone Number/Email adress',
                      icon:
                          const Icon(Icons.phone_outlined, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: customtextfield(
                      Controller: _passwordController,
                      text: 'password',
                      icon: const Icon(
                        Icons.visibility_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                    },
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: Color(0xFFFF5C00)),
                      ),
                    ),
                  ),
                ])),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Navbutton(text: 'login', width: 278, ontap: () {}),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(85.0, 5, 85, 20),
                  child: Row(
                    children: [
                      const Center(
                        child: Text(
                          'Don’t have an account?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Center(
                            child: Text(
                              "signup",
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
        ],
      ),
    );
  }
}
