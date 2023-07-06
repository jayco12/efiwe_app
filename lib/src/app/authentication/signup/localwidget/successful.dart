import 'package:efiwe_app/src/app/authentication/login/login.dart';
import 'package:efiwe_app/src/app/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class Successful extends StatefulWidget {
  const Successful({super.key});

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
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
                  "Sign Up successful",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Navbutton(
                  text: 'continue to login',
                  width: 300,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  })
            ],
          )),
    ));
  }
}
