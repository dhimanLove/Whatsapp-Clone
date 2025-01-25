import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = true;
  bool iss = true;
  bool ised = true;
  bool dep = true;
  bool id = true;
  String _selectedOption = "Off";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff0e1717),
      ),
      backgroundColor: Color(0xff0e1717),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("Conversation tones", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Play sounds for incoming and outgoing messages", style: TextStyle(color: Colors.white54)),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Color(0xff0e1717),
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  ListTile(
                    title: Text("Reminders", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Get occasional remainders about messages or status updates you haven't seen", style: TextStyle(color: Colors.white54)),
                    trailing: Switch(
                      value: iss,
                      onChanged: (value) {
                        setState(() {
                          iss = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Color(0xff0e1717),
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.2,
                  ),
                  SizedBox(height: 10),
                  Text("Messages", style: TextStyle(color: Colors.white54)),
                  ListTile(
                    title: Text("Notification tone", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Default ringtone", style: TextStyle(color: Colors.white54)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Vibrate", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Default ", style: TextStyle(color: Colors.white54)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Popup Notification", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Not available", style: TextStyle(color: Colors.white54)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Light", style: TextStyle(color: Colors.white)),
                    subtitle: Text("White", style: TextStyle(color: Colors.white54)),
                    onTap: () {
                      Get.dialog(
                        Material(
                          color: Colors.transparent,
                          child: Container(
                            height: 200,
                            color: Color(0xff0B1014),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("White", style: TextStyle(color: Colors.white, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Green", style: TextStyle(color: Colors.green, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Yellow", style: TextStyle(color: Colors.yellow, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Blue", style: TextStyle(color: Colors.blue, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Red", style: TextStyle(color: Colors.red, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Purple", style: TextStyle(color: Colors.purple, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Orange", style: TextStyle(color: Colors.orange, fontSize: 16)),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(8.0),
                                  title: Text("Pink", style: TextStyle(color: Colors.pink, fontSize: 16)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Use high priority notifications", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Show previews of notifications at the top of the screen", style: TextStyle(color: Colors.white54)),
                    trailing: Switch(
                      value: ised,
                      onChanged: (value) {
                        setState(() {
                          ised = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Color(0xff0e1717),
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  ListTile(
                    title:Text("Reaction Notification",style: TextStyle(color: Colors.white)),
                    subtitle: Text("Notify me when someone reacts to my message",style: TextStyle(color: Colors.white54)),
                    trailing: Switch(
                      value:dep,
                      onChanged: (value) {
                        setState(() {
                          dep = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Color(0xff0e1717),
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    thickness: 0.2,
                  ),
                  SizedBox(height: 10),
                  Text("Calls", style: TextStyle(color: Colors.white54)),
                  ListTile(
                    title: Text("Ringtone", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Default ringtone", style: TextStyle(color: Colors.white54)),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Vibrate", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Default", style: TextStyle(color: Colors.white54)),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 0.2,
                  ),
                  SizedBox(height: 10),
                  Text("Status", style: TextStyle(color: Colors.white54)),
                  ListTile(
                    title: Text("Reactions", style: TextStyle(color: Colors.white)),
                    subtitle: Text("Show notifications when you get likes on a status", style: TextStyle(color: Colors.white54)),
                    trailing: Switch(
                      value: id,
                      onChanged: (value) {
                        setState(() {
                          id = value;
                        });
                      },
                      activeTrackColor: Colors.green,
                      activeColor: Color(0xff0e1717),
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ])),
      ),
    );
  }
}
