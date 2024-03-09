import 'package:app/Screens/community.dart';
import 'package:app/Screens/profile.dart';
import 'package:app/Screens/complain.dart';
import 'package:app/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> pages = [
    const Home(),
    const Community(),
    const Complain(),
    const Profile(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            backgroundColor: Colors.white,
            gap: 8,
            activeColor: Colors.black,
            color: Colors.amber,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            duration: const Duration(milliseconds: 800),
            tabs: const [
              GButton(
                icon: Icons.home,
                iconSize: 30.0,
              ),
              GButton(
                icon: Icons.people,
                iconSize: 30.0,
              ),
              GButton(
                icon: Icons.work,
                iconSize: 30.0,
              ),
              GButton(
                icon: Icons.person,
                iconSize: 30.0,
              ),
            ],
            selectedIndex: currentPage,
            onTabChange: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
