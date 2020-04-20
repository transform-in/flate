# Flate (Flutter Page Template)
    a template that makes it easy for you to develop flutter applications where there are very easy menu settings,
    and accelerates you in developing mobile applications using flutter

## Folder Structure
```bash
.
├── README.md
├── lib
│   ├── _core_transform_in         # where the core template logic store
│   ├── config                     # where you configure your routes and theme
│   ├── main.dart                  # main apps
│   ├── menu                       # where you configure and register your menu
│   └── pages                      # where you define your main pages
├── pubspec.lock
├── pubspec.yaml
└── test                           # where test file store
    └── widget_test.dart

6 directories, 21 files

```

### How To Start
1. Configure and Register your menu (sidebar/page_tabs) at Folder **Menu** (if you want to have a sidebar or bottom tabs navigation menu)
```dart
sidebarmenu: (if you want to have a sidebar menu)

Map<String, Map<String, Object>> sidebarMenu = {
/* Register your sidebar menu here
* for example:
*
* {
*   'Dashboard': {
*     'icon': 'your menu icon', // Icons.dashboard
*     'route': 'your_route_named',
*   },
*   'second Menu title': {
*     'icon': 'your menu 2 icon', // Icons.delete
*     'route': 'your_route_named_for_second_menu'
*   }
* },
*
* if you don't want have a sidebar menu, just leave this with blank
* */
};

bottom tabs Navigation (page_tabs):

List<Map<String, Object>> bottomTabsMenu = [
  /* Register your page tabs menu here
* for example:
*
* {
*   'icon': Icons.dashboard,
*   'name': 'Dashboard',
*   'pageWidget': DashboardPage(),
*   'pageTitle': 'My Dashboard',
* },
*
*
* if you don't want have a bottom tabs navigation menu, just leave this with blank
* */

];

```
2. Configure your **routes**, on **config** folder (on the **return** section)
   >  if you have a bottom tabs (page_tabs) menu, then your default page widget (defaultRouteWidget) is tabScreen Widget
```dart
  {
    /* Register your named routes here */
    '/': (ctx) => defaultRouteWidget,
    '/settings': (ctx) => SettingsPage(),
    'your_another_named_routes': (ctx) => <your_page_widget>,
  };
```
3. Adjust your **theme** on **config** folder
```dart
ThemeData implementAndoidTheme() {
  // configure your android theme
  return ThemeData(
    primarySwatch: Colors.teal,
    accentColor: Colors.white,
    canvasColor: Color.fromRGBO(255, 254, 229, 1),
}

CupertinoThemeData implementIOSTheme() {
  // configure your iOS theme
  return CupertinoThemeData();
}

```
4. Implement on your **main.dart**
```dart
  void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Flate(
      context, // Build Context
      'Flate Page Template', // App Title
    ).buildAndroidPage(
      // you need to define defaultRouteWidget if you dont want bottom tab navigation
      // if you want to *use bottom tab navigation*, just *ignore* this params
      defaultRouteWidget: DashboardPage(),
    );
  }
}
```

