// Movies List section
import 'package:flutter/material.dart';

class MoviesList extends StatefulWidget {
  @override
  MoviesListState createState() {
    return new MoviesListState();
  }
}

// Movies List state
class MoviesListState extends State<MoviesList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MoviesList(),
      ),
    );
  }
}
