import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:changenotifier_theme/providers/settings_provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: settingsProvider.getTheme.primaryColor),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Blue"),
            onTap: () {
              //set theme here
              settingsProvider.setTheme("blue");
            },
          ),
          ListTile(
            title: Text("Green"),
            onTap: () {
              settingsProvider.setTheme("green");
            },
          ),
        ],
      ),
    );
  }
}
