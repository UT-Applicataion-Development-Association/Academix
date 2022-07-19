import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Friends',
    ),
    Text(
      'Index 2: Plan',
    ),
    Text(
      'Index 3: Me',
    )
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 222, 221, 221),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 24.0,
              semanticLabel: 'Home button',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Friends',
            icon: Icon(
              Icons.groups,
              size: 24.0,
              semanticLabel: 'Friends button',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Plan',
            icon: Icon(
              Icons.calendar_month,
              size: 24.0,
              semanticLabel: 'Plan button',
            ),
          ),
          BottomNavigationBarItem(
            label: 'Me',
            icon: Icon(
              Icons.account_circle,
              size: 24.0,
              semanticLabel: 'Me button',
            ),
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
