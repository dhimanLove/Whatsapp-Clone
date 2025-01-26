import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Backupchat extends StatelessWidget {
  const Backupchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)
        ),
        title: Text("Backup Chat",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff0B1014),
      ),
      body:
      Padding(padding: EdgeInsets.all(14),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Backup settings",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),),
            Text("Chat backup ke liye, WhatsApp ya similar apps mein Settings > Chats > Chat Backup option par jao. Google Drive ya local storage select karo,  dabao, aur aapki saari chats securely save ho jayengi.",
              style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w300),),
            SizedBox(
              height: 10,
            ),
            Text("Last Backup: 10:56 am",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),
            ),
            Text("Size : 1.2 GB",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button ka background color
                foregroundColor: Color(0xff0B1014), // Text ka color
              ),
              child: Text("Back up"),
            ),

            SizedBox(
              height: 20,
            ),
            Text("Manage Google Storage",style: TextStyle(color: Colors.green),),
            Text("11 GB of 15 GB used",style: TextStyle(color: Colors.white38)),
            SizedBox(
              height: 20,
            ),
            Text("Google Account",style: TextStyle(color: Colors.white70)),
            Text("rajdhiman001432gmail.com",style: TextStyle(color: Colors.white70)),

          ],
        ),
      )
      ,
    );
  }
}
