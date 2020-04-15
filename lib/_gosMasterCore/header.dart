import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final Widget widget;

  const PageHeader({
    @required this.title,
    this.widget,
  });

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
      bottom: widget,
    );
  }
}
