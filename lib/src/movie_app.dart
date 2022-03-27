// Movies List section
import 'package:apperto_themoviedb_app/src/bloc/movie_detail_bloc_provider.dart';
import 'package:flutter/material.dart';

import './ui/movie_app_list.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    return MovieDetailBlocProvider(
        child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      title: 'Películas Populares',
      home:
          SectionSwitcher(), // This will switch between 'Inicio' and 'Favoritos'
    ));
  }
}

// Section switcher definition
class SectionSwitcher extends StatefulWidget {
  const SectionSwitcher({Key key}) : super(key: key);

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
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
