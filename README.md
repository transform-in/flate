# Flate (Flutter Page Template)
    a template that makes it easy for you to develop flutter applications where there are very easy menu settings,
    and accelerates you in developing mobile applications using flutter

## Folder Structure
```bash
.
├── README.md
├── lib
│   ├── _core_transform_in         # where the core template logic store
│   ├── config                     # where you configure your routes and theme
│   ├── main.dart                   # main apps
│   ├── menu                       # where you configure and register your menu
│   └── pages                      # where you define your main pages
├── pubspec.lock
├── pubspec.yaml
└── test                           # where test file store
    └── widget_test.dart

6 directories, 21 files

```

### How To Start
1. Configure and Register your menu at Folder **Menu**
```dart
sidebarmenu:
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
4. Implement on your **main.dart**
```dart
MaterialApp(
      title: 'Flate (Flutter Page Template)',
      // implement your theme (Android or iOS)
      theme: implementAndoidTheme(),
      routes: getRoutes(
        context,
        // you need to define defaultRouteWidget if you dont want bottom tab navigation
        // if you want to *use bottom tab navigation*, just *ignore* this params
        defaultRouteWidget: DashboardPage(), 
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
```
5. 

