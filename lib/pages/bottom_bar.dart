import 'package:flutter/material.dart';
import 'package:ticket_app/pages/home_screen.dart';
import 'package:ticket_app/pages/profile_page.dart';
import 'package:ticket_app/pages/search_page.dart';
import 'package:ticket_app/pages/ticket_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static final List<Widget> _widgetOptions = [
     HomeScreen(),
    const SearchPage(),
    const TicketPage(),
    const ProfilePage()
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyHomePage._widgetOptions[counter],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: counter,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        onTap: (value) {
          counter = value;
          setState(() {});
        },
      
        elevation: 1000,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            activeIcon: Icon(Icons.airplane_ticket),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
