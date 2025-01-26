import 'package:flutter/material.dart';

class HelpCenterScreentwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: Text(
          'Help Center',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        children: [
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'About "Waiting for this message. This may take a while."',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'About unofficial apps',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'Get Started',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'About linked devices',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'About disappearing messages',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'Can\'t remember password for encrypted backup',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'How to link a device',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'Privacy and security for business messages',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'How to link a device with phone number',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.grey),
            title: Text(
              'About view once',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
            onTap: () {
              // Handle tap action here
            },
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 180,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.help_center_outlined,
                  color: Color(0xff0B1014),
                ),
                SizedBox(width: 5),
                Text(
                  "Contact us",
                  style: TextStyle(color: Color(0xff0B1014), fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
