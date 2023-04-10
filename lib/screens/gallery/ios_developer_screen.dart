import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class IosDeveloperScreen extends StatefulWidget {
  const IosDeveloperScreen({Key? key}) : super(key: key);

  @override
  _IosDeveloperScreen createState() => _IosDeveloperScreen();
}

class _IosDeveloperScreen extends State<IosDeveloperScreen> {
  bool darkTheme = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Seetings')),
      child: SafeArea(
        bottom: false,
        child: SettingsList(
          applicationType: ApplicationType.cupertino,
          platform: DevicePlatform.iOS,
          sections: [
            SettingsSection(
              title: Text('Common'),
              tiles: [
                SettingsTile.navigation(
                  onPressed: (_) {},
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
                SettingsTile.navigation(
                  title: Text('Environment'),
                  value: Text('Production'),
                  leading: Icon(Icons.cloud_outlined),
                ),
              ],
            ),
            SettingsSection(
              title: Text('Account'),
              tiles: [
                SettingsTile.navigation(
                  onPressed: (_) {},
                  leading: Icon(Icons.call),
                  title: Text('Phone number'),
                ),
                SettingsTile.navigation(
                  onPressed: (_) {},
                  leading: Icon(Icons.email_rounded),
                  title: Text('Email'),
                ),
                SettingsTile.navigation(
                  onPressed: (_) {},
                  leading: Icon(Icons.logout_outlined),
                  title: Text('Sign out'),
                ),
              ],
            ),
            SettingsSection(
              title: Text('Security'),
              tiles: [
                SettingsTile.switchTile(
                  onToggle: (_) {},
                  initialValue: true,
                  leading: Icon(Icons.screen_lock_portrait_outlined),
                  title: Text('Lock app bacground'),
                ),
                SettingsTile.switchTile(
                  onToggle: (_) {},
                  initialValue: true,
                  leading: Icon(Icons.fingerprint_outlined),
                  title: Text('Use fingerprint'),
                  description: Text(
                    'Allow application to access stored fingerprints id.',
                  ),
                ),
                SettingsTile.switchTile(
                  onToggle: (_) {},
                  initialValue: true,
                  leading: Icon(Icons.lock),
                  title: Text('Change password'),
                ),
                SettingsTile.switchTile(
                  onToggle: (_) {},
                  initialValue: true,
                  leading: Icon(Icons.notifications),
                  title: Text('Enable notifications'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
