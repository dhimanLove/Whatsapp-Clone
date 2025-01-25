// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chats/Settings.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    var colr= Colors.white54;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          "Account",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.security,color: colr,),
            title: Text("Sequrity notifications",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key_sharp,color: colr,),
            title: Text("Sequrity notifications",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.mail_outline,color: colr,),
            title: Text("Email adress",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.system_security_update_good_sharp,color: colr,),
            title: Text("Two-step verification",style: TextStyle(color: colr,fontSize: 16,),),
          ),
          ListTile(
            leading: Icon(Icons.sim_card,color: colr,),
            title: Text("Change number",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.insert_page_break_rounded,color: colr,),
            title: Text("Sequrity notifications",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt,color: colr,),
            title: Text("Sequrity notifications",style: TextStyle(color: colr,fontSize: 16),),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trash,color: colr,),
            title: Text("Delete account",style: TextStyle(color: colr,fontSize: 16),),
          ),
        ]
      ),
      backgroundColor: const Color(0xff0B1014),
    );
  }
}
