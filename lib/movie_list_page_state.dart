import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/movie_list_page.dart';
import 'package:flutter_mvvm_app/view_models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class MovieListPageState extends State<MovieListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<MovieListViewModel>(context, listen: false).clear();
    Provider.of<MovieListViewModel>(context, listen: false)
        .fetchMovieList("iron man");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final viewModel = Provider.of<MovieListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List ${widget.pathSegments[1]}'),
      ),
      body: ListView.builder(
        itemCount: viewModel.searchList.length,
        itemBuilder: (context, index) {
          final item = viewModel.searchList[index];
          return ListTile(
            title: Text(item.title!),
          );
        },
      ),
    );
  }
}
