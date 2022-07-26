import 'package:flutter/material.dart';
import 'package:flutter_mvvm_app/route_tag.dart';
import 'package:flutter_mvvm_app/home_page.dart';
import 'package:flutter_mvvm_app/main_route_delegate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.home),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () => {
                    MainRouteDelegate.of(context)
                        .push('/${RouteTag.blogListPage}/123')
                  },
              child: const Text('Go to Blog List')),
          ElevatedButton(
              onPressed: () => {
                    MainRouteDelegate.of(context)
                        .push('/${RouteTag.movieListPage}/123')
                  },
              child: const Text('Go to Movie List'))
        ],
      ),
    );
  }
}
