import 'package:flate/config/routes.dart';
import 'package:flate/config/theme.dart';
import 'package:flutter/material.dart';

class Flate {
  final BuildContext _ctx;
  final String _appTitle;

  Flate(this._ctx, this._appTitle);

  Widget buildAndroidPage({Widget defaultRouteWidget}) {
    return MaterialApp(
      title: _appTitle,
      theme: implementAndoidTheme(),
      routes: getRoutes(
        _ctx,
        defaultRouteWidget: defaultRouteWidget,
      ),
      onUnknownRoute: (settings) {
        print(settings.name);
        return;
      },
      onGenerateRoute: (settings) {
        print(settings.name);
        return;
      },
    );
  }
}
