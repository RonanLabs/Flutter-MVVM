import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/movie_list_page_state.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage(
      {required Key key, required this.title, required this.pathSegments})
      : super(key: key);

  final String title;

  final List<String> pathSegments;

  @override
  State<StatefulWidget> createState() => MovieListPageState();
}
