import 'package:changenotifier_theme/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get reference to
    var settingsProvider = Provider.of<SettingsProvider>(context);
    //print('current theme is ')

    return MaterialApp(
      // theme: CustomTheme.of(context),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: settingsProvider.getTheme.primaryColor,
          title: Text("Home"),
        ),
        body: Center(
          child: Container(
            child: Text(
              "Home page",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
