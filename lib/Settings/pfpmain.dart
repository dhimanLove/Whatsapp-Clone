import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pfpmain extends StatefulWidget {
  const Pfpmain({super.key});

  @override
  State<Pfpmain> createState() => _PfpmainState();
}

class _PfpmainState extends State<Pfpmain> {
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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body:
      Padding(padding: EdgeInsets.all(10),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Center(
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                ),
              ),
              Positioned(
                  top: 130,
                  left: 220,
                  child:
                  CircleAvatar(
                    radius: 23,
                    backgroundColor:Colors.green ,
                    child: Icon(Icons.camera_alt_outlined, color: Color(0xff0B1014), size: 30),
                  )
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white54,),
            title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.white54, fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Love Raj",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                ]
            ),
            trailing: Icon(Icons.edit, color: Colors.green),
          ),
          Divider(
            color: Colors.white54,
            thickness: 0.1,
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.white54),
            title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(color: Colors.white54, fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Make every Pixel perfect..",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,),
                  ),
                ]
            ),
            trailing: Icon(Icons.edit, color: Colors.green),
          ),
          Divider(
            color: Colors.white54,
            thickness: 0.1,
          ),
          ListTile(
            leading: const Icon(Icons.call, color: Colors.white54,),
            title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone",
                    style: TextStyle(color: Colors.white54, fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "+91 83989 19452",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,),
                  ),
                ]
            ),
          ),
        ],
      ),),
    );
  }
}
