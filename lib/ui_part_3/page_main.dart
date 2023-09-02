import 'package:application_ui/ui_part_3/page_home_1.dart';
import 'package:flutter/material.dart';

class BottomPage1 extends StatelessWidget {
  const BottomPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavPage1(),
    );
  }
}

class BottomNavPage1 extends StatefulWidget {
  const BottomNavPage1({super.key});

  @override
  State<BottomNavPage1> createState() => _BottomNavPage1State();
}

class _BottomNavPage1State extends State<BottomNavPage1> {
  int index= 0;

  final pages = [
    UserHome1(),
    Center(child: Text('Messages')),
    Center(child: Text('Notifications')),
    Center(child: Text('Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onChangeTab,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ]
      ),
    );
  }

  void onChangeTab(int index) => setState(() {
    this.index = index;
  });
}