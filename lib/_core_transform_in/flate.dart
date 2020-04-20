import 'package:flutter/material.dart';
import 'package:shop_app/config/routes.dart';
import 'package:shop_app/config/theme.dart';
import 'package:shop_app/pages/dashboard.dart';

class Flate {
  final BuildContext _ctx;
  final String _appTitle;

  Flate(this._ctx, this._appTitle);

  @override
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
    ;
  }
}
