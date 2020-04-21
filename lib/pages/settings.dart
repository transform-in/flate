import 'package:flate/_core_transform_in/page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScreen(
      appBarTitle: 'Settings',
      isParentPage: true,
      bodyWidget: Center(
        child: Text('im settings'),
      ),
    );
  }
}
