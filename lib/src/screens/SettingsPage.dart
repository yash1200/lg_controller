import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lg_controller/src/menu/MainMenu.dart';
import 'package:lg_controller/src/ui/ScreenBackground.dart';
import 'package:lg_controller/src/ui/TitleBar.dart';

/// Settings screen root.
class SettingsPage extends StatefulWidget {
  SettingsPage();

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => SystemNavigator.pop(),
      child: Scaffold(
        body: Container(
          decoration: ScreenBackground.getBackgroundDecoration(),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 64,
                  child: TitleBar(MainMenu.NONE),
                ),
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    child: Center(
                      child: Text("settings"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
