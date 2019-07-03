import '../resources/repo.dart';
import 'package:rxdart/rxdart.dart';
import '../models/movie_model.dart';

class MoviesBloc {
  final _repo = Repo();
  final _movieGet = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => _movieGet.stream;
  getMovieList() async {
    ItemModel itemModel = await _repo.getMovieList();
    _movieGet.sink.add(itemModel);
  }

  dispose() {
    _movieGet.close();
  }
}

final bloc = MoviesBloc();
