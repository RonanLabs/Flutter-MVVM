import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/home_page.dart';
import 'package:flutter_mvvm_app/main_route_delegate.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () =>
                  {MainRouteDelegate.of(context).push('/blog-list/123')},
              child: const Text('Go to Blog List'))
        ],
      ),
    );
  }
}
