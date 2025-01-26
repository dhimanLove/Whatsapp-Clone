import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart'
import 'package:get/get.dart';

class PrivacyCheckupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy checkup', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        color: Color(0xff0B1014),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.network("https://cdn1.iconfinder.com/data/icons/3d-front-color/256/sheild-front-color.png",height: 200,width:double.infinity ,),
            SizedBox(height: 20),
            Text(
              'Your privacy matters',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Control your privacy settings and set up WhatsApp just the way you want it.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Option list using ListTiles
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white),
              title: Text('Choose who can contact you', style: TextStyle(color: Colors.white, fontSize: 16)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Control your personal info', style: TextStyle(color: Colors.white, fontSize: 16)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble, color: Colors.white),
              title: Text('Add more privacy to your chats', style: TextStyle(color: Colors.white, fontSize: 16)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.white),
              title: Text('Add more protection to your account', style: TextStyle(color: Colors.white, fontSize: 16)),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              onTap: () {},
            ),
            Spacer(),
            // Footer text
            Text(
              'Go to Settings > Privacy to view more privacy settings.',
              style: TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}