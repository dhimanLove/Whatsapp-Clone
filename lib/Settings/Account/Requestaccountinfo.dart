import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Requestaccountinfo extends StatefulWidget {
  const Requestaccountinfo({super.key});

  @override
  State<Requestaccountinfo> createState() => _RequestaccountinfoState();
}

class _RequestaccountinfoState extends State<Requestaccountinfo> {
  bool isswitch = false;
  bool swtch = false;
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
        title: Text(
          "Request account info",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body:
      Padding(padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Account information",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300),),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          ListTile(
            leading: Icon(Icons.insert_page_break_rounded,color: Colors.white54,),
            title: Text("Request account report",style: TextStyle(color: Colors.white54,fontSize: 16),),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          Text("A report ek official document,facts, aur analysis present karta hai.Reports concise hote hain aur decisions lene ke liye helpful insights provide karte hain.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,),textAlign: TextAlign.left,)
          ,
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          ListTile(
            leading: Icon(Icons.history,color: Colors.white70,),
            title: Text("Create reports automatically",style: TextStyle(color: Colors.white70),),
            trailing: Switch(
              value: isswitch,
              onChanged: (value) {
                setState(() {
                  isswitch = value;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.green.withOpacity(0.4),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.4),
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          Text("A new report will be created every month , Learn more",style: TextStyle(color: Colors.white70)),
          SizedBox(
            height: 25,
          ),
          Text("Channels activity",style: TextStyle(color: Colors.white70)),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          ListTile(
            leading: Icon(Icons.insert_page_break_outlined,color: Colors.white70,),
            title: Text("Request Channels report",style: TextStyle(color: Colors.white70),),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          Text("A report ek official document,facts, aur analysis present karta hai.Reports concise hote hain aur decisions lene ke liye helpful insights provide karte hain.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,),textAlign: TextAlign.left,),
          Divider(
            thickness: 0.2,
            color: Colors.white54,
          ),
          ListTile(
            leading: Icon(Icons.history,color: Colors.white,),
            title: Text("Create reports automatically",style: TextStyle(color: Colors.white70),),
            trailing: Switch(
              value: swtch,
              onChanged: (value) {
                setState(() {
                  swtch = value;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.green.withOpacity(0.4),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.4),
            ),
          )
        ],
      ),)
    );
  }
}
