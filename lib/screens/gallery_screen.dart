import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seeting/screens/gallery/android_settings_screen.dart';
import 'package:seeting/screens/gallery/cross_platform_settings_screen.dart';
import 'package:seeting/screens/gallery/ios_developer_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Replications'),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(CupertinoIcons.settings),
                title: Text('iOS Developer Screen'),
                onPressed: (context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IosDeveloperScreen()));
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.settings),
                title: Text('Android Settings Screen'),
                onPressed: (context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AndroidSettingsScreen()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
