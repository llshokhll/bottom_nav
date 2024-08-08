import 'package:bottom_nav/ui/home/home_screen.dart';
import 'package:bottom_nav/ui/profile/profile_screen.dart';
import 'package:bottom_nav/ui/search/search_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.purple,
        // selectedFontSize: 20,
        // unselectedFontSize: 15,
        // iconSize: 20,
        //backgroundColor: Colors.yellow,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print(index);
        },
        currentIndex: currentIndex,
        items: [
          getItem(icon: Icons.home, labelText: 'Home'),
          getItem(icon: Icons.search, labelText: 'Search'),
          getItem(icon: Icons.person, labelText: 'Profile'),
        ],
      ),
    );
  }

  BottomNavigationBarItem getItem(
      {required IconData icon, required String labelText}) {
    return BottomNavigationBarItem(
      label: labelText,
      icon: Icon(icon),
    );
  }
}
