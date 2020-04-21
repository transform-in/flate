import 'package:flate/_core_transform_in/menu.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class PageScreen extends StatefulWidget {
  final Widget bodyWidget;
  final String appBarTitle;
  final Widget bottomAppBar;
  final Widget floatingButton;
  final FloatingActionButtonLocation floatingButtonLocation;
  final bool isSubPage;
  final bool isParentPage;
  final Map<String, Map<String, Object>> tabPageParams;

  final bool needMainAppBar;

  const PageScreen({@required this.bodyWidget,
    @required this.appBarTitle,
    this.bottomAppBar,
    this.needMainAppBar = true,
    this.floatingButton,
    this.floatingButtonLocation,
    this.isSubPage = false,
    this.tabPageParams,
    this.isParentPage = false});

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  List<Map<String, Object>> pages = [];
  int _selectedPageIndex = 0;
  bool _alreadyLoaded = false;

  @override
  void initState() {
    super.initState();

    if (!_alreadyLoaded && !widget.isSubPage && !widget.isParentPage) {
      pages = Menu(context).getBottomTabWidget();
      _alreadyLoaded = true;
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appMenu = Menu(context);
    return Scaffold(
      appBar: widget.needMainAppBar
          ? PageHeader(
        title: widget.appBarTitle == ''
            ? pages[_selectedPageIndex]['title']
            : widget.appBarTitle,
        widget: widget.bottomAppBar,
      ).build(context)
          : null,
      drawer: appMenu.renderSidebarMenu(),
      body: widget.bodyWidget == null
          ? pages[_selectedPageIndex]['page']
          : widget.bodyWidget,
      bottomNavigationBar: widget.isSubPage || widget.isParentPage
          ? null
          : appMenu.renderBottomNavigationBar(_selectedPageIndex, _selectPage),
      floatingActionButton: widget.floatingButton,
      floatingActionButtonLocation: widget.floatingButtonLocation,
    );
  }
}
