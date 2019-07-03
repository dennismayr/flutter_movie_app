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
      home: Scaffold(
        body: MovieList(),
      ),
    );
  }
}
