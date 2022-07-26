import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/blog_list_page.dart';
import 'package:flutter_mvvm_app/route_tag.dart';
import 'package:flutter_mvvm_app/home_page.dart';
import 'package:flutter_mvvm_app/movie_list_page.dart';

extension RouteWidget on String {
  Widget createPage() {
    final pathSegments = Uri.parse(this).pathSegments;
    final page = pathSegments.isNotEmpty ? pathSegments[0] : '';
    switch (page) {
      case RouteTag.blogListPage:
        return BlogListPage(
            key: ValueKey(this), title: this, pathSegments: pathSegments);
      case RouteTag.movieListPage:
        return MovieListPage(
            key: ValueKey(this), title: this, pathSegments: pathSegments);
      default:
        return HomePage(
          key: ValueKey(this),
          title: this,
          pathSegments: pathSegments,
        );
    }
  }
}
