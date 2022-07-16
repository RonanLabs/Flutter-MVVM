import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/app_page.dart';
import 'package:flutter_mvvm_app/main_route_delegate.dart';
import 'package:flutter_mvvm_app/main_route_parser.dart';
import 'package:flutter_mvvm_app/view_models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class AppState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MovieListViewModel())],
      child: MaterialApp.router(
        title: 'Flutter MVVM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routeInformationParser: MainRouteParser(),
        routerDelegate: MainRouteDelegate(),
      ),
    );
  }
}
