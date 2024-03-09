import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Placeholder data for demonstration
  String name = 'Ajay Sharma';
  String phoneNumber = '123-456-7890';
  String pinCode = '173234';
  String district = 'Waknaghat';
  String city = 'Solan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              _buildProfileInfo('Name', name),
              _buildProfileInfo('Phone Number', phoneNumber),
              _buildProfileInfo('Pin Code', pinCode),
              _buildProfileInfo('District', district),
              _buildProfileInfo('City', city),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Logout'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
