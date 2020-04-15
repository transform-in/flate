import 'package:flutter/material.dart';
import 'package:shop_app/_gosMasterCore/page.dart';

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
