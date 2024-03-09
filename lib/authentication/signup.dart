import 'package:app/authentication/login.dart';
import 'package:app/navigation/navbar.dart';
import 'package:app/color/theme.dart';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  List<String> districtItems = ['Waknaghat', 'Chambaghat', 'Kandaghat'];
  List<String> cityItems = ['Shimla', 'Domeher', 'Solan'];

  String selectedDistrict = 'Waknaghat';
  String selectedCity = 'Shimla';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Create Account',
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
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.fromBorderSide(BorderSide(color: primaryColor)),
              ),
              child: TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
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
            Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.fromBorderSide(BorderSide(color: primaryColor)),
              ),
              child: TextFormField(
                controller: pincodeController,
                decoration: const InputDecoration(
                  labelText: 'Pincode',
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
            Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.fromBorderSide(BorderSide(color: primaryColor)),
              ),
              child: DropdownButtonFormField<String>(
                value: selectedDistrict,
                onChanged: (value) {
                  setState(() {
                    selectedDistrict = value!;
                  });
                },
                items: districtItems.map((district) {
                  return DropdownMenuItem<String>(
                    value: district,
                    child: Text(district),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Enter your District',
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
            Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.fromBorderSide(BorderSide(color: primaryColor)),
              ),
              child: DropdownButtonFormField<String>(
                value: selectedCity,
                onChanged: (value) {
                  setState(() {
                    selectedCity = value!;
                  });
                },
                items: cityItems.map((city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Enter your City',
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
            const SizedBox(height: 60),
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
                    "Sign Up",
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
                const Text("Already have an account?"),
                GestureDetector(
                  child: const Text(
                    " Login",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
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
