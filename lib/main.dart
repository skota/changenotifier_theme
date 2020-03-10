import 'package:changenotifier_theme/providers/settings_provider.dart';
import 'pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (BuildContext buildContext) => SettingsProvider(),
        child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentPage = 0;

  var _pages = [HomePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: settingsProvider.getTheme,
      title: "Dynamic themes",
      home: Scaffold(
        body: Center(
          child: _pages.elementAt(_currentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.blue,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
            });
          },
        ),
      ),
    );
  }
}
