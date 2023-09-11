import 'package:bus_booking_tickets/screen/home_page.dart';
import 'package:bus_booking_tickets/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget>[
    const HomePage(),
    const SearchScreen(),
    const Text('Tickets'),
    const Text('Profile')
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bus), label: 'Bus'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}
