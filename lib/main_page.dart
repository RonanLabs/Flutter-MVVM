import 'package:flutter/material.dart';

class MainPage<T> extends Page<T> {
  const MainPage({
    required LocalKey key,
    required String name,
    required this.builder,
  }) : super(key: key, name: name);

  final WidgetBuilder builder;

  @override
  Route<T> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: builder,
    );
  }
}
