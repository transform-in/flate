import 'package:flate/_core_transform_in/menu.dart';
import 'package:flate/pages/settings.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext ctx,
    {Map<String, Map<String, Object>> params, Widget defaultRouteWidget}) {
  var menuObj = Menu(ctx);
  var totalBottomNavBar = menuObj.getTotalBottomNavBar();
  if (totalBottomNavBar > 0) {
    defaultRouteWidget = menuObj.getTabScreen();
  }
  return {
    /* Register your named routes here */
    '/': (ctx) => defaultRouteWidget,
    '/settings': (ctx) => SettingsPage(),
  };
}
