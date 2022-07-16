import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/blog_list_page.dart';
import 'package:flutter_mvvm_app/home_page.dart';
import 'package:flutter_mvvm_app/movie_list_page.dart';

Widget getRouteWidget(String name) {
  final pathSegments = Uri.parse(name).pathSegments;
  final page = pathSegments.isNotEmpty ? pathSegments[0] : '';
  switch (page) {
    case 'blog-list':
      return BlogListPage(
          key: const ValueKey('/blog-list'),
          title: '/blog-list',
          pathSegments: pathSegments);
    case 'movie-list':
      return MovieListPage(
          key: const ValueKey('/movie-list'),
          title: '/movie-list',
          pathSegments: pathSegments);
    default:
      return HomePage(
        key: const ValueKey('/home'),
        title: '/home',
        pathSegments: pathSegments,
      );
  }
}
