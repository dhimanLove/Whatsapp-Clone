import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatLockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014), // Dark background color
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Chat lock',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.lock,
                    size: 100,
                    color: Colors.green,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Chat lock keeps your chats locked\nand hidden',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontWeight: FontWeight.w300,
                      fontSize: 21,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'If you have locked chats, pull down on your chat list or type your secret code in the search bar to find them.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70, // Light text color
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      // Add link functionality
                    },
                    child: Text(
                      'Learn more',
                      style: TextStyle(
                        color: Colors.blue, // Link color
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Unlock and clear locked chats',
                style: TextStyle(
                  color: Colors.white, // White text color
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'If you forgot your secret code, you can clear it. This will also unlock and clear messages, photos and videos in locked chats.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
