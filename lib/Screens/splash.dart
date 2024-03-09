import 'package:app/authentication/signup.dart';
import 'package:app/color/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splash,
      body: GestureDetector(
        onTap: () {
          // Navigate to the signup page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUp()),
          );
        },
        child: Image.asset("assets/Login.png"),
      ),
    );
  }
}
