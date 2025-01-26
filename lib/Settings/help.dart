// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/help/appinfo.dart';
import 'package:whatsapp/Settings/help/helpcenter.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Get.back();
          },
              icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text(
            "Help",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
          backgroundColor: const Color(0xff0B1014),
        ),
        backgroundColor: const Color(0xff0B1014),
      body:Column(
        children: [
          ListTile(
            leading: Icon(Icons.help_outline,color: Colors.white54,),
            title: Text("Help centre",style: TextStyle(color: Colors.white54),),
            subtitle: Text("Get help, contact us",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200),),
            onTap: () {
              Get.to(HelpCenterScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page_outlined,color: Colors.white54,),
            title: Text("Terms and Privacy Policy",style: TextStyle(color: Colors.white54),),
            onTap: () {
              Get.toNamed("/termsandprivacy");
            },
          ),
          ListTile(
            leading: Icon(Icons.report_gmailerrorred_outlined,color: Colors.white54,),
            title: Text("Channel reports",style: TextStyle(color: Colors.white54),),
            onTap: () {
              Get.toNamed("/channelreports");
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline,color: Colors.white54,),
            title: Text("App info",style: TextStyle(color: Colors.white54),),
            onTap: () {
              Get.to(() => Appinfo());
            },
          ),
        ],
      )

    );
  }
}
