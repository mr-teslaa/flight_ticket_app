import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../screens/home_screen.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  // DEFINE THE APP SCREENS
  final appScreens = [
    const HomeScreen(),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Tickets'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  // TRIGGER SCREEN WHEN A ICON CLICKED
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    // SET STATE WILL APPLY THE CHANGES AT UI IMMEDIATELY
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tickets'),
        backgroundColor: const Color(0xff55efc4),
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // ALL THOUGH WE ARE CHANGING THE UI, WE MUST NEED TO TELL THE CURRENT INDEX TO SEE THE FOOTER ICON ANIMATION/CHANGING
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff1abc9c),
        unselectedItemColor: const Color(0xff55efc4),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
