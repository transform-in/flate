import 'package:flutter/material.dart';
import 'package:shop_app/menu/page_tabs.dart';
import 'package:shop_app/menu/sidebar.dart';
import 'package:shop_app/_gosMasterCore/page.dart';

class Menu {
  List<Widget> _listOfMenu = [];
  List<BottomNavigationBarItem> _listOfItem = [];
  List<Map<String, Object>> _listOfBottomWidget = [];
  int _indexOfPage = 0;

  final BuildContext context;

  Menu(this.context);

  /* ===== Single Widget generator ===== */
  ListTile _buildListTile(IconData icons,
      String title,
      String routeName,) {
    if (icons == null || routeName == null) {
      return ListTile();
    }
    return ListTile(
      leading: Icon(icons),
      title: Text(
        title,
        style: Theme
            .of(context)
            .textTheme
            .title,
      ),
      onTap: () => Navigator.of(context).pushReplacementNamed(routeName),
    );
  }

  BottomNavigationBarItem _buildItem(IconData icons,
      String title,) {
    return BottomNavigationBarItem(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      icon: Icon(icons),
      title: Text(title),
    );
  }

  int getTotalBottomNavBar() {
    return bottomTabsMenu.length;
  }

  /* ===== Single Widget generator END ===== */

  List<Widget> _buildColumnMenu(String sidebarTitle) {
    _listOfMenu.add(Container(
      height: 120,
      color: Theme
          .of(context)
          .primaryColor,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Text(
        sidebarTitle == '' || sidebarTitle == null ? 'Menu' : sidebarTitle,
        style: Theme
            .of(context)
            .textTheme
            .title,
      ),
    ));
    _listOfMenu.add(SizedBox(
      height: 5,
    ));
    sidebarMenu.forEach((menuTitle, menuProps) {
      _listOfMenu.add(_buildListTile(
        menuProps['icon'],
        menuTitle,
        menuProps['route'],
      ));
    });

    return _listOfMenu;
  }

  void _fillListBottomWidget(){
    _listOfBottomWidget = [];
    bottomTabsMenu.forEach((dt) {
      _listOfBottomWidget.add({
        'page': dt['pageWidget'],
        'title': dt['pageTitle'],
      });
    });
  }

  List<Map<String, Object>> getBottomTabWidget() {
    _fillListBottomWidget();
    print('will get: ${_listOfBottomWidget}');
    return _listOfBottomWidget;
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItem() {
    _listOfItem = [];
    bottomTabsMenu.forEach((dt) {
      return _listOfItem.add(
        _buildItem(
          dt['icon'],
          dt['name'],
        ),
      );
    });
    print(_listOfBottomWidget);
    return _listOfItem;
  }

  Widget renderSidebarMenu({String sidebarTitle}) {
    if (sidebarMenu == null || sidebarMenu.length == 0) return null;

    return Drawer(
      child: Column(
        children: _buildColumnMenu(sidebarTitle),
      ),
    );
  }

  Widget renderBottomNavigationBar(int currentIndex, Function onTapAction, {
    Color unselectItemColor,
    Color selectedItemColor,
    Color backgroundColor,
    BottomNavigationBarType type,
  }) {
    if (bottomTabsMenu == null || bottomTabsMenu.length == 0) return null;

    return BottomNavigationBar(
      items: _buildBottomNavigationBarItem(),
      unselectedItemColor: unselectItemColor == null
          ? Theme
          .of(context)
          .bottomAppBarColor
          : unselectItemColor,
      selectedItemColor: selectedItemColor == null
          ? Theme
          .of(context)
          .accentColor
          : selectedItemColor,
      backgroundColor: backgroundColor == null
          ? Theme
          .of(context)
          .primaryColor
          : backgroundColor,
      type: type == null ? BottomNavigationBarType.fixed : type,
      currentIndex: currentIndex,
      onTap: onTapAction,
    );
  }

  Widget getTabScreen() {
    print(getTotalBottomNavBar());
    return DefaultTabController(
      length: getTotalBottomNavBar(),
      child: PageScreen(
        appBarTitle: '',
        bodyWidget: null,
      ),
    );
  }
}
