import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/screens/playlists.dart';

import '../artists.dart';
import '../premium.dart';
import 'home_screen.dart';

class bottom_nav_bar extends StatefulWidget {
  const bottom_nav_bar({Key? key}) : super(key: key);

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    home(),

    artists(),
    playlists(),
    //setting()
    premium()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'Music',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Artists',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: 'Playlists',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Premium',
            backgroundColor: HexColor("#F9D8AC"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,

      ),
    );
  }
}
