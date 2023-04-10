import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class AndroidSettingsScreen extends StatefulWidget {
  const AndroidSettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AndroidSettingsScreen> createState() => _AndroidSettingsScreenState();
}

class _AndroidSettingsScreenState extends State<AndroidSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    bool lockapp = true;

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SettingsList(
        platform: DevicePlatform.android,
        sections: [
          SettingsSection(
            tiles: [
              CustomSettingsTile(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text('Common',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              )),
              SettingsTile(
                title: Text('Language'),
                description: Text('English'),
                leading: Icon(Icons.language),
              ),
              SettingsTile(
                title: Text('Environment'),
                description: Text('Production'),
                leading: Icon(Icons.cloud_outlined),
              ),
              CustomSettingsTile(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Account',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              )),
              SettingsTile(
                title: Text('Phone number'),
                leading: Icon(Icons.call),
              ),
              SettingsTile(
                title: Text('Email'),
                leading: Icon(Icons.email_rounded),
              ),
              SettingsTile(
                title: Text('Sign out'),
                leading: Icon(Icons.logout),
              ),
              CustomSettingsTile(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Security',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              )),
              SettingsTile.switchTile(
                onToggle: (value) {
                  setState(() {
                    lockapp = value;
                  });
                },
                initialValue: lockapp,
                title: Text('Lock app background'),
                leading: Icon(Icons.screen_lock_portrait),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  setState(() {
                    lockapp = value;
                  });
                },
                initialValue: false,
                title: Text('Use fingerprint'),
                leading: Icon(Icons.fingerprint),
              ),
              SettingsTile(
                title: Text('Change password'),
                leading: Icon(Icons.lock),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  setState(() {
                    lockapp = value;
                  });
                },
                initialValue: false,
                title: Text('Eneable notifications'),
                leading: Icon(Icons.notifications),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
