import 'package:flutter_mvvm_app/models/movie_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieListService {
  Future<List<Search>> fetch(String keyword) async {
    final url = 'http://www.omdbapi.com/?s=$keyword&apikey=eb0d5538';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final movieList = Movie.fromJson(body);
      return movieList.search ?? <Search>[];
    }
    return <Search>[];
  }
}
