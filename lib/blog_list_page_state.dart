import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/blog_list_page.dart';

class BlogListPageState extends State<BlogListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog List'),
      ),
      body: Column(children: [Text(widget.pathSegments[1])]),
    );
  }
}
