import 'package:flutter/material.dart';
import 'package:redship_project/screens/homepage.dart';

import 'blank_screen.dart';
import 'hospital_blood.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const BlankScreen(),
    const HomePage(),
    const HospitalBlood(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 35,
            ),
            label: '',
          ),
        ],
        // unselectedItemColor: Colors.blue,
        elevation: 0,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff37459D),
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
      ),
    );
  }
}
