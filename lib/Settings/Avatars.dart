// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/avatar/Createpfp.dart';
import 'package:whatsapp/Settings/avatar/Stickers.dart';

class Avatars extends StatelessWidget {
  const Avatars({super.key});

  @override
  Widget build(BuildContext context) {
    var scrh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Avatar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: scrh * 0.44,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Image.network(
                fit: BoxFit.fill,
                "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_football_sport_sports_helmet.png"),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text("Browse stickers",
                style: TextStyle(color: Colors.white54)),
            onTap: () {
              Get.to(Stickers());
            },
          ),
          ListTile(
              title: Text("Change profile photo",
                  style: TextStyle(color: Colors.white54)),
              onTap: () {
                Get.to(AvatarProfilePhoto());
              }),
          SizedBox(height: 10),
          Divider(thickness: 0.2, color: Colors.white54),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Learn more",
                  style: TextStyle(
                    color: Color(0xFF095A91),
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF095A91),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Delete Avatar",
                  style: TextStyle(
                    color: Color(0xFF6C0000),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff0B1014),
      floatingActionButton: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 45,
          width: 45,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.mode_edit_outlined,
              color: Colors.white,
              size: 20, // Adjust icon size if needed
            ),
            backgroundColor: Color(0xff333333),
          ),
        ),
      ),
    );
  }
}
