// tMDB API access method

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/movie_model.dart';

class TMDBAPIprovider {
  Client client = Client();
  final _apiKey = 'e214cdebc17661b34492daa956c574ce'; // 'final' = 'let' in JS

  // Now we're doing the async part of the API request to get our movie list info
  Future<ItemModel> downloadList() async {
    print("descargado");

    final response = await client
        .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());

    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('No se pudo descargar el contenido');
    }
  }
}
