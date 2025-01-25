

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Timer.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool swtch = true;
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
                subtitle: Text("My Contacts, everyone"),
                onTap:(){
                  Get.dialog(
                    AlertDialog(
                      title: Text("Select Font Size",style: stl,),
                      backgroundColor: Color(0xff333333),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Everyone",
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
                              "My Contacts",
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
                              "Everyone Except...",
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
                },
              ),
              ListTile(
                title: Text("Profile photo",style: stl,),
                subtitle: Text("My Contacts, everyone"),
                onTap:(){
                  Get.dialog(
                    AlertDialog(
                      title: Text("Select Font Size",style: stl,),
                      backgroundColor: Color(0xff333333),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Everyone",
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
                              "My Contacts",
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
                              "Everyone Except...",
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
                },
              ),
               ListTile(
                title: Text("About",style: stl,),
                subtitle: Text("My Contacts, everyone"),
                onTap:(){
                  Get.dialog(
                    AlertDialog(
                      title: Text("Select Font Size",style: stl,),
                      backgroundColor: Color(0xff333333),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Everyone",
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
                              "My Contacts",
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
                              "Everyone Except...",
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
                },
              ),
              ListTile(
                title: Text("Status",style: stl,),
                onTap:(){
                  Get.dialog(
                    AlertDialog(
                      title: Text("Select Font Size",style: stl,),
                      backgroundColor: Color(0xff333333),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Everyone",
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
                              "My Contacts",
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
                              "Everyone Except...",
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
                },
              ),
              ListTile(
                title: Text("Read recipients",style: stl,),
                subtitle:Text("If turned off , you won't see read receipts from other people . Read receipts are always sent for group chats"),
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
              Text("Disappearing messages",style: stl,),
              ListTile(
                title: Text("Default message timer",style: stl,),
                subtitle: Text("Start new chats with disappearing messages set to your timer"),
                onTap: (){
                  Get.to(Disappear());
                },
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