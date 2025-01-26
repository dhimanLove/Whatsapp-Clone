import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLockScreen extends StatefulWidget {
  @override
  _AppLockScreenState createState() => _AppLockScreenState();
}

class _AppLockScreenState extends State<AppLockScreen> {
  bool isBiometricEnabled = true; // Switch state
  int autoLockValue = 2; // Radio group state
  bool showContentInNotifications = true; // Switch state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff0B1014),
        title: Text(
          'App lock',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: Text(
                'Unlock with biometric',
                style: TextStyle(color: Colors.white), // White text color
              ),
              subtitle: Text(
                'When enabled, you’ll need to use fingerprint, face or other unique identifiers to open WhatsApp. You can still answer calls if WhatsApp is locked.',
                style: TextStyle(color: Colors.white70, fontSize: 12), // Light text color
              ),
              activeColor: Colors.green, // Switch active color
              value: isBiometricEnabled,
              onChanged: (value) {
                setState(() {
                  isBiometricEnabled = value;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Automatically lock',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            RadioListTile<int>(
              title: Text(
                'Immediately',
                style: TextStyle(color: Colors.white), // White text color
              ),
              value: 0,
              groupValue: autoLockValue,
              activeColor: Colors.green, // Radio active color
              onChanged: (value) {
                setState(() {
                  autoLockValue = value!;
                });
              },
            ),
            RadioListTile<int>(
              title: Text(
                'After 1 minute',
                style: TextStyle(color: Colors.white), // White text color
              ),
              value: 1,
              groupValue: autoLockValue,
              activeColor: Colors.green, // Radio active color
              onChanged: (value) {
                setState(() {
                  autoLockValue = value!;
                });
              },
            ),
            RadioListTile<int>(
              title: Text(
                'After 30 minutes',
                style: TextStyle(color: Colors.white), // White text color
              ),
              value: 2,
              groupValue: autoLockValue,
              activeColor: Colors.green, // Radio active color
              onChanged: (value) {
                setState(() {
                  autoLockValue = value!;
                });
              },
            ),
            Divider(height: 32, color: Colors.white70),
            SwitchListTile(
              title: Text(
                'Show content in notifications',
                style: TextStyle(color: Colors.white), // White text color
              ),
              subtitle: Text(
                'Preview sender and message text inside new message notifications.',
                style: TextStyle(color: Colors.white70, fontSize: 12), // Light text color
              ),
              activeColor: Colors.green, // Switch active color
              value: showContentInNotifications,
              onChanged: (value) {
                setState(() {
                  showContentInNotifications = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
