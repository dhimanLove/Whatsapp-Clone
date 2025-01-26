import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Emailadress extends StatelessWidget {
  const Emailadress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          "Email address",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: Padding(padding: EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Center(
              child: Icon(Icons.mail, color: Colors.green, size: 100),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Text("Email helps you to access your account it is'nt visible to others.",
              style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,fontSize: 14),textAlign: TextAlign.center,),)
          ,
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 18),
          child: Text("Email",
            style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,fontSize: 14),
            textAlign: TextAlign.left,
          ),),
          ListTile(
            title: Text("rajdhiman00143@gmail.com",style: TextStyle(color: Colors.white),),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.white,)),
            subtitle: Row(
              children: [
                Icon(Icons.verified_outlined,color: Colors.green,size: 13,),
                Text("Verified",style: TextStyle(color: Colors.green,
                    fontWeight: FontWeight.w300,fontSize: 13),)
              ],
            ),
          )
        ],
      ),)
    );
  }
}
