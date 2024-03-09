import 'package:app/navigation/navbar.dart';
import 'package:app/authentication/signup.dart';
import 'package:app/color/theme.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Login here',
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(
              'assets/login.jpg',
              height: 300,
              width: 400,
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.fromBorderSide(BorderSide(color: primaryColor)),
              ),
              child: TextFormField(
                controller: phoneNumberController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            GestureDetector(
              child: Container(
                height: 50,
                width: 280,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border:
                      Border.fromBorderSide(BorderSide(color: primaryColor)),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Nav()),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                GestureDetector(
                  child: const Text(
                    " SignUp",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
