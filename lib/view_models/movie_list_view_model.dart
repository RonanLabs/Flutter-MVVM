import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/models/movie_model.dart';
import 'package:flutter_mvvm_app/services/movie_list_service.dart';

class MovieListViewModel extends ChangeNotifier {
  List<Search> searchList = <Search>[];

  Future<void> fetchMovieList(String keyword) async {
    searchList.addAll(await MovieListService().fetch(keyword));
    notifyListeners();
  }

  void clear() {
    searchList.clear();
  }
}
