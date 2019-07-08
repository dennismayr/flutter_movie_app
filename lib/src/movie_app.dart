// Movies List section
import 'package:flutter/material.dart';
import './ui/movie_app_list.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Películas Populares',
      home: SectionSwitcher(),  // This will switch between 'Inicio' and 'Favoritos'
    );
  }
}

// Section switcher definition
class SectionSwitcher extends StatefulWidget {
  SectionSwitcher({Key key}) : super(key: key);

  @override
  _SectionSwitcherState createState() => _SectionSwitcherState();
}

class _SectionSwitcherState extends State<SectionSwitcher> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Home view body
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieList(),
      // TODO: View contents: must switch views 'Inicio' & 'Favoritos'

// Bottom navigation bar:
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favoritos'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
