import 'package:flutter/material.dart';
import 'package:whatsapp/Chats/Chats.dart';

class Starred extends StatefulWidget {
  const Starred({super.key});

  @override
  State<Starred> createState() => _StarredState();
}

class _StarredState extends State<Starred> {
  @override
  Widget build(BuildContext context) {
    var scrh = MediaQuery.of(context).size.height;
    var scrw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context)=>Chats()) ;
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 22,),
        ),
        title: Text('Starred messages',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
      ),
      body: Container(
        width: scrw*1,
      decoration: const BoxDecoration(color: Color(0xff0B1014),
      ),
        child:Center(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Icon(Icons.stars_rounded,color: Colors.green,size:90,),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: scrh*0.10,
                  width: scrw*0.7,
                  child: Align(
                      alignment:Alignment.topCenter,
                      child: Text("Tap and Hold on any message in any chat to star it , so you can easily find it later",style: TextStyle(color: Colors.white70,fontSize: 17,fontWeight: FontWeight.w200),)),
                )
              ],
            ),
        ),
    ));
  }
}
