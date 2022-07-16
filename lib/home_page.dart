import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/home_page_state.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {required Key key, required this.title, required this.pathSegments})
      : super(key: key);

  final String title;

  final List<String> pathSegments;

  @override
  State<StatefulWidget> createState() => HomePageState();
}
