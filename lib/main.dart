import 'package:flutter/material.dart';
import 'src/movie_app.dart';      // most code will be here

void main() => runApp(new MovieApp()); // main() starts program execution

// Main app widget
class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Películas Populares',
      home: new MoviesList(),   // imported class MoviesList: where movies will be shown
    );
  }
}
