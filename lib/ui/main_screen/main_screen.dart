import 'package:flutter/material.dart';

import '../inventory/inventory_screen.dart';
import '../profile/profile_screen.dart';
import '../spells/spells_screen.dart';
import '../stats/stats_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedIndex = 0;

  List<Widget> _optionsWidget = <Widget>[
    ProfilePage(),
    StatsPage(),
    InventoryPage(),
    SpellsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _optionsWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Character'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: ('Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: ('Items'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: ('My Spells'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
