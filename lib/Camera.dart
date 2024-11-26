import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Chats/Chats.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: IconButton(onPressed: (){
            Navigator.pop(context,
            MaterialPageRoute(builder: (context)=>Chats())
            );
          }, icon: FaIcon(FontAwesomeIcons.x,color: Colors.white,size: 18,),)
        ),
        actions: [
          IconButton(onPressed: (){},
            icon: FaIcon(FontAwesomeIcons.boltLightning,color: Colors.white,size: 18,),)
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text("Camera",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
