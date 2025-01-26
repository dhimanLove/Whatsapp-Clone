import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/help/helpcenter2.dart';

class HelpCenterScreen extends StatelessWidget {
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
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Icon(FontAwesomeIcons.whatsapp, color: Colors.green, size: 60),
                  SizedBox(height: 10),
                  Text(
                    "How can we help?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[900],
                        hintText: "Search Help Center",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.grey,width: 0.3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.grey,width: 0.3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.grey, width: 0.3),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Help topics",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.flag, color: Colors.green),
                  title: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.chat, color: Colors.green),
                  title: Text(
                    "Chats",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.store, color: Colors.green),
                  title: Text(
                    "Connect with Businesses",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.green),
                  title: Text(
                    "Voice and Video Calls",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.green),
                  title: Text(
                    "Communities",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.chat_bubble, color: Colors.green),
                  title: Text(
                    "Channels",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.green),
                  title: Text(
                    "Privacy, Safety, and Security",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle, color: Colors.green),
                  title: Text(
                    "Accounts and Account Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
           GestureDetector(
             child: Container(
               height: 100,
               width: 200,
               child:  Center(
                 child: Text("See more",style: TextStyle(
                     color: Colors.green,
                     fontSize: 20
                 ),
                 ),
               ),
             ),
             onTap: (){
               Get.to(HelpCenterScreentwo());
             },
           ),
          ],
        ),
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
