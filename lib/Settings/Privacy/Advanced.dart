import 'package:flutter/material.dart';

class AdvancedSettingsPage extends StatefulWidget {
  @override
  _AdvancedSettingsPageState createState() => _AdvancedSettingsPageState();
}

class _AdvancedSettingsPageState extends State<AdvancedSettingsPage> {
  bool isBlocked = true;
  bool isIPProtected = true;
  bool isLinkPreviewDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Color(0xff0B1014),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              activeColor: Colors.green,
              contentPadding: EdgeInsets.zero,
              title: Text('Block unknown account messages',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              subtitle: Text(
                'To protect your account and improve device performance, WhatsApp will block messages from unknown accounts if they exceed a certain volume.',
                style: TextStyle(color: Colors.grey),
              ),
              value: isBlocked,
              onChanged: (bool value) {
                setState(() {
                  isBlocked = value;
                });
              },
            ),
            Divider(color: Colors.grey.shade800),
            SwitchListTile(
              activeColor: Colors.green,
              contentPadding: EdgeInsets.zero,
              title: Text('Protect IP address in calls',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              subtitle: Text(
                'To make it harder for people to infer your location, calls on this device will be securely relayed through WhatsApp servers. This will reduce call quality.',
                style: TextStyle(color: Colors.grey),
              ),
              value: isIPProtected,
              onChanged: (bool value) {
                setState(() {
                  isIPProtected = value;
                });
              },
            ),
            Divider(color: Colors.grey.shade800),
            SwitchListTile(
              activeColor: Colors.green,
              contentPadding: EdgeInsets.zero,
              title: Text('Disable link previews',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              subtitle: Text(
                'To help protect your IP address from being inferred by third-party websites, previews for the links you share in chats will no longer be generated.',
                style: TextStyle(color: Colors.grey),
              ),
              value: isLinkPreviewDisabled,
              onChanged: (bool value) {
                setState(() {
                  isLinkPreviewDisabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
