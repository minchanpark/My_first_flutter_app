import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BoilerPlateApp());

class BoilerPlateApp extends StatelessWidget {
  const BoilerPlateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BoilerPlateExample(),
    );
  }
}

class BoilerPlateExample extends StatefulWidget {
  const BoilerPlateExample({super.key});

  @override
  State<BoilerPlateExample> createState() => _BoilerPlateExampleState();
}

class _BoilerPlateExampleState extends State<BoilerPlateExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TextApp(),
    TextApp(),
    TextApp(),
    TextApp(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0XFF4B6EB1),
        title: const TextStyleApp(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: TextStyleApp(),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Color(0xFF7B7A7A)),
              title: DrawerListileApp(),
            )
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0XFF4B6EB1),
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4),
      ),
    );
  }
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  static const TextStyle optionStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 24,
      letterSpacing: 0.1,
      color: Color.fromRGBO(0, 0, 0, 0.6));
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: optionStyle,
    );
  }
}

class TextStyleApp extends StatelessWidget {
  const TextStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'SODA',
      style: TextStyle(
        fontSize: 20,
        height: 1.2,
        color: Color(0xFFFFFFFF),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
    );
  }
}

class DrawerListileApp extends StatelessWidget {
  const DrawerListileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Text(
        'Icon:favorite',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.6),
          letterSpacing: 0.1,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
