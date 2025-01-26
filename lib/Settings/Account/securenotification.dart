import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Securenotification extends StatefulWidget {
  const Securenotification({super.key});

  @override
  State<Securenotification> createState() => _SecurenotificationState();
}

class _SecurenotificationState extends State<Securenotification> {
  bool switchval = false; // Declare switchval at class level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
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
          'Secure Notification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Center(
                  child: Icon(Icons.lock, color: Colors.green, size: 100),
                ),
              ),
              Text("Your chats and calls are private", style: TextStyle(color: Colors.white70, fontSize: 16)),
              SizedBox(height: 20),
              Text(
                "Encryption ensures data security by converting readable information into an "
                    "unreadable format using algorithms, providing confidentiality, integrity, and authentication "
                    "across digital communications and transactions.",
                style: TextStyle(color: Colors.white38),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.message, color: Colors.green),
                title: Text("Text and Voice messages", style: TextStyle(color: Colors.white38)),
              ),
              ListTile(
                leading: Icon(Icons.call, color: Colors.green),
                title: Text("Audio and video calls", style: TextStyle(color: Colors.white38)),
              ),
              ListTile(
                leading: Icon(Icons.attach_file_outlined, color: Colors.green),
                title: Text("Photos, videos and documents", style: TextStyle(color: Colors.white38)),
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined, color: Colors.green),
                title: Text("Location sharing", style: TextStyle(color: Colors.white38)),
              ),
              ListTile(
                leading: Icon(Icons.tips_and_updates_outlined, color: Colors.green),
                title: Text("Status Updates", style: TextStyle(color: Colors.white38)),
              ),
              SizedBox(height: 10),
              Text("Learn more", style: TextStyle(color: Colors.lightBlue, fontSize: 15)),
              SizedBox(height: 10),
              Divider(
                color: Colors.white38,
                thickness: 0.3,
              ),
              ListTile(
                title: Text("Show security notifications", style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  "Security notifications alert users about potential threats, breaches, or suspicious activities, "
                      "enhancing overall security measures.",
                  style: TextStyle(color: Colors.white38),
                ),
                trailing: Switch(
                  value: switchval,
                  onChanged: (value) {
                    setState(() {
                      switchval = value;
                    });
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.white,
                  activeThumbImage: NetworkImage('https://cdn1.iconfinder.com/data/icons/3d-front-color/256/sheild-front-color.png'),
                  inactiveThumbImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/gray-toolbar-2/512/turn_off_on_power-256.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
