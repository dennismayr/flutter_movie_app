import 'package:rxdart/rxdart.dart';

import '../models/movie_model.dart';
import '../resources/repo.dart';

class MoviesBloc {
  final _repo = Repo();
  final _movieGet = PublishSubject<ItemModel>();

  // Movie data is passed as a stream
  Stream<ItemModel> get allMovies => _movieGet.stream;

  getMovieList() async {
    ItemModel itemModel = await _repo.getMovieList();
    _movieGet.sink.add(itemModel);
  }

  dispose() {
    _movieGet.close();
  }
}

final bloc = MoviesBloc();
