import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Updates/Updates.dart';

class statusp extends StatefulWidget {
  const statusp({super.key});

  @override
  State<statusp> createState() => _statuspState();
}

class _statuspState extends State<statusp> {
  @override
  Widget build(BuildContext context) {

    var lt=FontWeight.w300;

    var scrh = MediaQuery.of(context).size.height;
    var scrw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
          MaterialPageRoute(builder: (context)=>Updates());
        }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
        title: Text("Status Privacy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 22),),
      ),
      body: Container(
        width: scrw*1,
        color: const Color(0xff0B1014),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text("Who can see my status updates",style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w300)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Column(
                 children: [
                   ListTile(
                     leading: Icon(Icons.radio_button_checked,color: Colors.green,),
                     title: Text("My contacts",style: TextStyle(color: Colors.white,fontWeight: lt),),
                   ),

                   ListTile(
                     leading: Icon(Icons.radio_button_off,color: Colors.white24,),
                     title: Text("My contacts except...",style: TextStyle(color: Colors.white,fontWeight: lt),),
                     trailing: Text("0 excluded",style: TextStyle(color: Colors.green,fontWeight: lt,fontSize: 15),),
                   ),

                   ListTile(
                     leading: Icon(Icons.radio_button_off,color: Colors.white24,),
                     title: Text("Only share with...",style: TextStyle(color: Colors.white,fontWeight: lt),),
                     trailing: Text("1 included",style: TextStyle(color: Colors.green,fontWeight: lt,fontSize: 15),),
                   )
                 ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text("Changes to your privacy settings won't affect status updates you'e sent already ",style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w300),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
