import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/blog_list_page_state.dart';

class BlogListPage extends StatefulWidget {
  const BlogListPage(
      {required Key key, required this.title, required this.pathSegments})
      : super(key: key);

  final String title;

  final List<String> pathSegments;

  @override
  State<StatefulWidget> createState() => BlogListPageState();
}
