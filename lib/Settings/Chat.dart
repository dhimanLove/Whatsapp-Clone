// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Chats/Backup.dart';
import 'package:whatsapp/Settings/Chats/history.dart';
import 'package:whatsapp/Settings/Chats/transferdata.dart';
import 'package:whatsapp/Settings/Chats/wallpaper.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isSwitched = true;
  bool isswitch = false;
  bool isswit = false;
  bool swtch = true;

  // Dialog to select font size
  void love() {
    Get.dialog(
      AlertDialog(
        title: Text("Select Font Size",style: stl,),
        backgroundColor: Color(0xff333333),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                "Small",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              title: Text(
                "Medium",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              title: Text(
                "Large",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }

  var stl = TextStyle(
    color: Colors.white70,
    fontWeight: FontWeight.w300,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
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
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Display", style: TextStyle(color: Colors.white70)),
            ),
            SizedBox(height: 9),
            ListTile(
              leading: Icon(
                Icons.brightness_3,
                color: Colors.white70,
              ),
              title: Text(
                "Theme",
                style: TextStyle(color: Colors.white70),
              ),
              subtitle: Text(
                "Dark",
                style: TextStyle(color: Colors.white54),
              ),
              onTap: () {
                Get.dialog(
                  AlertDialog(
                    title: Text("Select Theme",style: stl,),
                    backgroundColor: Color(0xff1e2323),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.brightness_3,
                                color: Colors.white70,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Dark",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.back();
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.brightness_5,
                                color: Colors.white70,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Light",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.back();
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Colors.white70,
              ),
              title: Text(
                "Wallpaper",
                style: TextStyle(color: Colors.white70),
              ),
              subtitle: Text(
                "Change wallpaper",
                style: TextStyle(color: Colors.white54),
              ),
              onTap: () {
                Get.to(WallpaperPage());
              },
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.white54,
              thickness: 0.2,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Chat Settings",
                style: stl,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "Enter is send",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                "Enter key will send your message",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeColor: Colors.green,
                activeTrackColor: Colors.green.withOpacity(0.4),
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.withOpacity(0.4),
              ),
            ),
            ListTile(
              title: Text(
                "Clear Chats",
                style: TextStyle(color: Colors.white70),
              ),
              subtitle: Text(
                "Delete all chat history",
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Switch(
                value: isswitch,
                onChanged: (value) {
                  setState(() {
                    isswitch = value;
                  });
                },
                activeColor: Colors.green,
                activeTrackColor: Colors.green.withOpacity(0.4),
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.withOpacity(0.4),
              ),
            ),
            ListTile(
              title: GestureDetector(
                child: Text("Font size", style: TextStyle(color: Colors.white70)),
                onTap: love,  // Call dialog method here
              ),
              subtitle: Text(
                "Small",
                style: TextStyle(color: Colors.white70),
              ),
            ),
            ListTile(
              title: Text(
                "Voice message transcripts",
                style: TextStyle(color: Colors.white70),
              ),
              subtitle: Text(
                "Delete all chat history",
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Switch(
                value: swtch,
                onChanged: (value) {
                  setState(() {
                    swtch = value;
                  });
                },
                activeColor: Colors.green,
                activeTrackColor: Colors.green.withOpacity(0.4),
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.withOpacity(0.4),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 0.2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text("Archived Chats",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300)),
                SizedBox(height: 10),
                ListTile(
                  title: Text(
                    "Keep chats archived",
                    style: TextStyle(color: Colors.white70),
                  ),
                  subtitle: Text(
                    "Archived chats will remain archived when you receive a new message",
                    style: TextStyle(color: Colors.white54),
                  ),
                  trailing: Switch(
                    value: isswit,
                    onChanged: (value) {
                      setState(() {
                        isswit = value;
                      });
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.green.withOpacity(0.4),
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 0.2,
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.cloudArrowUp,
                color: Colors.white70,
              ),
              title: Text("Chat backup", style: stl),
              onTap: (){
                Get.to(Backupchat());
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.database,
                color: Colors.white70,
              ),
              title: Text("Transfer data", style: stl),
              onTap: (){
                Get.to(Transferdata());
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.clockRotateLeft,
                color: Colors.white70,
              ),
              title: Text("Chat history", style: stl),
              onTap: (){
                Get.to(Chathistory());
              },
            ),
          ],
        ),
      ),
    );
  }
}
