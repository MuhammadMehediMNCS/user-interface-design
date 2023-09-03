import 'package:application_ui/ui_part_5/page_home_2.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int index = 0;

  final pages = [
    const SizeHomePage(),
    const Center(child: Text('Categories')),
    const Center(child: Text('Cart')),
    const Center(child: Text('Wishlist')),
    const Center(child: Text('Account')),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changedTab,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ]
      ),
    );
  }

  void changedTab(int index) => setState(() {
    this.index = index;
  });
}