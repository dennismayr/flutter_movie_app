import 'dart:async';
import 'tmdb_api.dart';
import '../models/movie_model.dart';
import '../models/trailer_model.dart';

class Repo {
  final tmdbProvider = TMDBAPIprovider();

  Future<ItemModel> getMovieList() =>
      tmdbProvider.downloadList(); // we're pushing data to BLOC
  Future<TrailerModel> getTrailers(int movieId) =>
      tmdbProvider.getTrailer(movieId);
}
