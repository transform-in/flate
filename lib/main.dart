import 'package:flate/_core_transform_in/flate.dart';
import 'package:flate/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Flate(
      context,
      'Flate Page Template',
    ).buildAndroidPage(
      defaultRouteWidget: DashboardPage(),
    );
  }
}
