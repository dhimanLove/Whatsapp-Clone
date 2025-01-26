// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Account/Deleteaccount.dart';
import 'package:whatsapp/Settings/Account/Emailadress.dart';
import 'package:whatsapp/Settings/Account/Passkeys.dart';
import 'package:whatsapp/Settings/Account/Requestaccountinfo.dart';
import 'package:whatsapp/Settings/Account/Twostep.dart';
import 'package:whatsapp/Settings/Account/changenumber.dart';
import 'package:whatsapp/Settings/Account/securenotification.dart';
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
            onTap:
                () {
              Get.to(Securenotification());
            },
          ),
          ListTile(
            leading: Icon(Icons.vpn_key_sharp,color: colr,),
            title: Text("Passkeys",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.to(Passkeys());
            },
          ),
          ListTile(
            leading: Icon(Icons.mail_outline,color: colr,),
            title: Text("Email adress",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.to(
                Emailadress()
              );
            }
          ),
          ListTile(
            leading: Icon(Icons.system_security_update_good_sharp,color: colr,),
            title: Text("Two-step verification",style: TextStyle(color: colr,fontSize: 16,),),
            onTap: (){
              Get.to(Twostep());
            },
          ),
          ListTile(
            leading: Icon(Icons.sim_card,color: colr,),
            title: Text("Change number",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.to(Changenumber());
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_page_break_rounded,color: colr,),
            title: Text("Request account info",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.to(Requestaccountinfo());
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt,color: colr,),
            title: Text("Add Account",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff232323),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  ),
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("lib/assets/I.jpg"),
                        ),
                        title: Text("Loveraj",style: TextStyle(color: Colors.white),),
                        subtitle: Text("+91 83989 19452",style: TextStyle(color: Colors.white54),),
                        trailing: Icon(Icons.check_circle,color: Colors.green,),
                      ),
                      SizedBox(height: 20,),
                      ListTile(
                        leading: Icon(Icons.add,color: Colors.white,),
                        title: Text("Add account",style: TextStyle(color: Colors.white),),
                        onTap: (){},
                      )
                    ],
                  )
                )
              );
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.trash,color: colr,),
            title: Text("Delete account",style: TextStyle(color: colr,fontSize: 16),),
            onTap: (){
              Get.to(DeleteAccount());
            },
          ),
        ]
      ),
      backgroundColor: const Color(0xff0B1014),
    );
  }
}
