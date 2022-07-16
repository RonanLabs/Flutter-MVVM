import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/app_page.dart';
import 'package:flutter_mvvm_app/main_route_delegate.dart';
import 'package:flutter_mvvm_app/main_route_parser.dart';

class AppState extends State<AppPage> {
  final delegate = MainRouteDelegate(
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) {
          return Container();
        },
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter MVVM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routeInformationParser: MainRouteParser(),
      routerDelegate: delegate,
    );
  }
}
