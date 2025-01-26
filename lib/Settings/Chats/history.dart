import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Chathistory extends StatelessWidget {
  const Chathistory({super.key});

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
        title: Text("Chat History",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff0B1014),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.import_export,color:Colors.white70
              ,),
            title: Text("Export Chat",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),),),
          ListTile(
            leading: Icon(Icons.archive_outlined,color:Colors.white70
              ,),
            title: Text("Archive Chat",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),),),
          ListTile(
            leading: Icon(Icons.not_interested,color:Colors.white70
              ,),
            title: Text("Clear all Chat",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),),),
          ListTile(
            leading: Icon(FontAwesomeIcons.trash,color:Colors.white70
              ,),
            title: Text("Delete all Chat",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),),),
        ],
      ),
    );
  }
}
