import 'package:flutter/material.dart';
import 'package:shop_app/pages/dashboard.dart';
import 'package:shop_app/pages/Print.dart';
import 'package:shop_app/pages/category.dart';
import 'package:shop_app/pages/favorites.dart';
import 'package:shop_app/pages/map.dart';

/*

  Created by: Raditya Pratama (radityaapratamaa@gmail.com)

  If you want to have a bottom navigation bar
  you can define your bottom Navigation Bar here

  this the example of bottomTabsMenu,
  you can define it by yourself

*/

List<Map<String, Object>> bottomTabsMenu = [
  {
    'icon': Icons.dashboard,
    'name': 'Dashboard',
    'pageWidget': DashboardPage(),
    'pageTitle': 'My Dashboard',
  },
  {
    'icon': Icons.star,
    'name': 'Favorites',
    'pageWidget': FavoritesPages(),
    'pageTitle': 'My Favorites',
  },
  {
    'icon': Icons.map,
    'name': 'Maps',
    'pageWidget': MapPage(),
    'pageTitle': 'My Map',
  },

  {
    'icon': Icons.print,
    'name': 'Print',
    'pageWidget': PrintPage(),
    'pageTitle': 'My Print',
  },

  {
    'icon': Icons.category,
    'name': 'Category',
    'pageWidget': CategoryPage(),
    'pageTitle': 'My Category',
  },
];
