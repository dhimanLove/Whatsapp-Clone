

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Privacy/Groups.dart';
import 'package:whatsapp/Settings/Privacy/Last%20seen.dart';
import 'package:whatsapp/Settings/Privacy/Profilephoto.dart';
import 'package:whatsapp/Settings/Privacy/about.dart';
import 'package:whatsapp/Settings/Privacy/blocked.dart';
import 'package:whatsapp/Settings/Privacy/calls.dart';
import 'package:whatsapp/Settings/Privacy/ive%20Location.dart';
import 'package:whatsapp/Settings/Privacy/status.dart';
import 'package:whatsapp/Settings/Timer.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  List arr = [
    "Groups",
    "Live Location",
    "calls",
    "Blocked contacts",
    "App Lock",
    "Chat Lock",
    "Allow camera effects",
    "Advanced",
  ];
  bool swtch = true;
  bool swutch = true;
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
          "Privacy",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Who can see my personal info",style: stl,),
              ListTile(
                title: Text("Last seen and online",style: stl,),
                subtitle: Text("My Contacts, everyone",style: TextStyle(color: Colors.white38),),
                onTap:(){
                 Get.to(Lastseenonl());
                },
              ),
              ListTile(
                title: Text("Profile photo",style: stl,),
                subtitle: Text("Everyone",style: TextStyle(color: Colors.white38),),
                onTap:(){
                  Get.to(pfp());
                },
              ),
               ListTile(
                title: Text("About",style: stl,),
                subtitle: Text("Everyone",style: TextStyle(color: Colors.white38),),
                onTap:(){
                  Get.to(About());
                },
              ),
              ListTile(
                title: Text("Status",style: stl,),
                onTap:(){
                  Get.to(Status());
                },
              ),
              ListTile(
                title: Text("Read recipients",style: stl,),
                subtitle:Text("If turned off , you won't see read receipts from other people . Read receipts are always sent for group chats",style: TextStyle(color: Colors.white38),),
                trailing: Switch(
                  value: swtch,
                  onChanged: (value) {
                    setState(() {
                      swtch = value;
                    });
                  },
                  activeColor: Color(0xff0B1014),
                  activeTrackColor: Colors.green.withOpacity(0.4),
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.withOpacity(0.4),
                ),
              ),
              Divider(
                thickness: 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Disappearing messages",style: stl,),
                    SizedBox(height: 10),
                    ListTile(
                      title: Text("Default message timer",style: stl,),
                      subtitle: Text("Start new chats with disappearing messages set to your timer",style: TextStyle(color: Colors.white38),),
                      trailing: Text("Off",style: TextStyle(color: Colors.white38),),
                      onTap: (){
                        Get.to(Disappear());
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.2,
              ),
             ListTile(
               title: Text("Groups",style: stl,),
               subtitle: Text("Who can add me to groups",style: TextStyle(color: Colors.white38),),
               onTap: (){
                  Get.to(grps());
               },
             ),
              ListTile(
                title: Text("Live Location",style: stl,),
                subtitle: Text("Who can see my live location",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get.to(liveloction());
                },
              ),
              ListTile(
                title: Text("Calls",style: stl,),
                subtitle: Text("Silence unknown numbers",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get.to(Clmanage());
                }
              ),
              ListTile(
                title: Text("Blocked contacts",style: stl,),
                subtitle: Text("10",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get.to(Blocked());
                },
              ),
              ListTile(
                title: Text("App Lock",style: stl,),
                subtitle: Text("Disabled",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get;
                },
              ),
              ListTile(
                title: Text("Chat Lock",style: stl,),
                subtitle: Text("Disabled",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get;
                },
              ),
              ListTile(
                title: Text("Allow camera effects",style: stl,),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Allow camera access to take photos and record videos",style: TextStyle(color: Colors.white38),),
                    Text("Learn more",style: TextStyle(color: Colors.blue),),
                  ],
                ),
                trailing: Switch(
                  value: swutch,
                  onChanged: (value) {
                    setState(() {
                      swutch = value;
                    });
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green.withOpacity(0.4),
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.withOpacity(0.4),
                ),
                onTap: (){
                  Get;
                },
              ),
              ListTile(
                title: Text("Advanced",style: stl,),
                subtitle: Text("Media visibility, link previews, and more",style: TextStyle(color: Colors.white38),),
                onTap: (){
                  Get;
                },
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 0.2,
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Privacy Checkup",style: stl,),
                subtitle: Text("Improve your privacy settings",style: TextStyle(color: Colors.white38),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
var stl =
TextStyle(color: Colors.white70,fontWeight: FontWeight.w300)
;